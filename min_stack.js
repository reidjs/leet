function minStack() {
  this.stack = [];
  this.minimumValue = null;
}

minStack.prototype.push = function(val) {
  //check if value is less than min
  //set min 
  if (this.minimumValue === null || val < this.minimumValue) {
    this.setMin(val);
  }
  this.stack.push(val);
};

minStack.prototype.pop = function(val) {
  this.stack.pop();
};

minStack.prototype.setMin = function(val) {
  this.minimumValue = val;
};

//return minimum value in O(1)
minStack.prototype.min = function() {
  console.log(this.minimumValue);
  return this.minimumValue;
};

