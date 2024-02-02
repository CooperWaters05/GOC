SpriteManager _SM;

void setup() {
    size(1024, 768);
    _SM = new SpriteManager();
    _SM.spawn(new Shooter(150, 100));
    _SM.spawn(new Shooter(10, 150));
    _SM.spawn(new Shooter(40, 120));
    _SM.spawn(new Shooter(90, 80));
    _SM.spawn(new boss(300, 300));
}

void draw() {
    background(0);
    _SM.manage();
}

void keyPressed() {
    _SM.player.keyDown();
}

void keyReleased() {
    _SM.player.keyUp();
}
