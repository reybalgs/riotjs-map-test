// TodoStore definition.
// Flux stores house application logic and state that relate to a specific domain.
// In this case, a list of todo items.
function ExploreStore() {
  
  riot.observable(this) // Riot provides our event emitter.
  
  var self = this

  self.state = {//state bundle to keep track of everything in one place
    mode: 'map',
    mww: false,
    filter: '',
    search: '',
    region: '',
  };

  self.artworks =  [
    {name: "Bluecadet", desc:'Oh hi dis where I work',mww: true, lat: 39.973665, lon:-75.134005, region: 1},
    {name: "Will House",desc:'Hi I live here', mww: false , lat: 39.963011, lon:-75.157218, region: 3},
    {name: "Mike's House",desc:'Mike and Steve live here', mww: false , lat: 39.962994, lon:-75.141753, region: 2},
    {name: "Palm", desc:'Eat here often', lat: 39.968810, mww: true , lon:-75.134125, region: 1},
    {name: "Museum", desc:'Most notable from the film "Rocky"', mww: false , lat: 39.965222, lon:-75.180472, region: 4},
    {name: "Sir Caleb's House", desc:"Master Caleb's Residence", mww: true ,lat: 39.967247, lon:-75.164780, region: 4}, 
    {name: "STAR", desc:"Street Tails Animal Rescue", mww: false ,lat: 39.967261, lon:-75.141187, region: 2},
    {name: "Liacouras Center", desc:"Home of Temple Basketball", mww: true ,lat: 39.979908, lon:-75.158308  , region: 5},
    {name: "College of Engineering", desc:"Home of Temple Engineering", lat: 39.982371, lon:-75.153023, region: 5},
    {name: "Temple IBC", desc:"Best Gym", lat: 39.979032, mww: true ,lon:-75.159148, region: 5},
    {name: "Old Temple House", desc:"Lived here once upon a time", mww: false ,lat: 39.985048, lon:-75.163204, region: 5},
    {name: "Meek's Neighborhood", desc:'"Meet me at twentysomething and berks"', mww: true , lat: 39.983646, lon:-75.171908, region: 5}
  ];

  self.results = [];

  self.regions = [
    {id: '', display:"All"},  
    {id: '1', display:"Fishtown"},
    {id: '2', display:"Northern Liberties"},
    {id: '3', display:"East Poplar"},
    {id: '4', display:"Fairmount"},
    {id: '5', display:"North Philly"},
  ];


  // Our store's event handlers / API.
  // This is where we would use AJAX calls to interface with the server.
  // Any number of views can emit actions/events without knowing the specifics of the back-end.
  // This store can easily be swapped for another, while the view components remain untouched.

  self.on('stateInit', function() {
    filterData();
    
    // self.trigger('map_init', {
    //   state: self.state, 
    //   artworks:self.artworks,
    // })

    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('mwwSet', function(newMww) {
    self.state.mww = newMww;
    console.log("RC mwwSet");
    filterData();
    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('searchSet', function(newSearch) {
    console.log("RC searchSet");
    self.state.search = newSearch;
    filterData();
    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('regionSet', function(newRegion) {
    self.state.region = newRegion;
    filterData();
    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('modeSet', function(newMode) {
    self.state.mode = newMode;
    filterData();
    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });


  function filterData(){
    self.results = window.artworks.filter(function(artNode){
      if(artNode.mww == self.state.mww || self.state.mww == false){
        if(artNode.region == self.state.region || self.state.region == ''){
          if(self.state.search == '') return this;
          else if(artNode.name.toLowerCase().indexOf(self.state.search.toLowerCase()) != -1){
            return this;
          }
        }
      }
    });
  }

}
