<hello-world>
  <p>{ opts.greeting } <trim value="{ what }"  onclick="{destruct}" length="3"/>!</p>
  <script>
    this.what = "egghead"
  </script>
</hello-world>

<trim>
  <span>{ opts.value.substr(0, length) }</span>
  <script>
    var self = this,
        interval,
        count = 0;

    this.length = opts.length;

    this.on('update', function(){
      console.log('update');
    })
    this.on('mount', function(){
      console.log('mount');
      self.startAnimation();
    })
    this.on('unmount', function(){
      console.log('unmount');
      self.stopAnimation();
    })

    this.destruct = function(){
      console.log("DESTROY");
      self.unmount();
    }

    this.startAnimation = function(){
      interval = setInterval(function(){
        self.length++;
        if (self.length > opts.value.length) {
          count++;
          if(count > 10) self.unmount();
          self.length = 0;
        }
        self.update();
      }, 500);
    };

    this.stopAnimation = function(){
      clearInterval(interval);
      interval = null;
    }
  </script>
</trim>