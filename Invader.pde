class Invader extends Sprite {
    
    // constructor
    Invader(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(8, 8); 
    }
    
    @Override // change directions vertically and horizontally
    void update() {
        pos.add(vel);
        
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
        if (pos.y < 0 || pos.y > height) {
            vel.y *= -1;
        }
    }
}
