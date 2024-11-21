import std.stdio;
import core.runtime;
import coldbite;
import std.stdio;

class Client : BaseGame {
	override void initialize() {
		writeln("Game initialized");

		setTitle("Basic Game");
		setSize(1024, 768);
		setPosition(-1, -1); // @ToDo Center on Screen?
		// @ToDo Resizable, Minimize, Maximize, Restore?
		//setFullscreen(true);

		setRenderer(RendererType.DirectX);

		// Init
		start();
	}

	// @ToDo uninitalize/dispose?

	override void running() {
		writeln("GameLoop");
		// Game-Loop
	}

	override void rendering() { // @ToDO Context?
		writeln("Render");
	}
}

void main() {
	Client game = new Client();
	game.initialize();
}
