// TodoStore definition.
// Flux stores house application logic and state that relate to a specific domain.
// In this case, a list of todo items.
function ExploreStore() {
  
  var self = this

  riot.observable(self) // Riot provides our event emitter.
  
  self.state = {//state bundle to keep track of everything in one place
    mode: 'map',
    mww: false,
    search: '',
    region: '0',
  };

  self.results = [];

  // Our store's event handlers / API.
  // This is where we would use AJAX calls to interface with the server.
  // Any number of views can emit actions/events without knowing the specifics of the back-end.
  // This store can easily be swapped for another, while the view components remain untouched.

  self.on('state_init', function() {
    console.log("state_init");

    riot.route.exec(function(modeParam, regionParam, searchParam) {

      if(modeParam == 'gallery'){
        self.state.mode = 'gallery';
      }
      else if(modeParam == 'list'){
        self.state.mode = 'list';
      }
      else{
        self.state.mode = 'map';
      }

      if(regionParam != '' && regionParam != undefined){
        self.state.region = regionParam;
      }
      else{
        self.state.region = '0';
      }

      if(searchParam != '' && searchParam != undefined){
        self.state.search = searchParam;
        console.log("searchParam",searchParam);
      }
      else{
        self.state.search = '';
      }
    });

    filterData();

    self.trigger('map_init',{
      state: self.state
    })

    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('mwwSet', function(newMww) {
    self.state.mww = newMww;
    filterData();
    self.trigger('state_changed', {
      state: self.state, 
      results: self.results
    });
  });

  self.on('searchSet', function(newSearch) {
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
        if(artNode.region == self.state.region || self.state.region == '0'){
          if(self.state.search == '') return this;
          else if(artNode.name.toLowerCase().indexOf(self.state.search.toLowerCase()) != -1 || artNode.desc.toLowerCase().indexOf(self.state.search.toLowerCase()) != -1){
            return this;
          }
        }
      }
    });
  }

}
