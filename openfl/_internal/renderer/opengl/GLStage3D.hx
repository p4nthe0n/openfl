package openfl._internal.renderer.opengl;


import openfl._internal.renderer.RenderSession;
import openfl.display.Stage3D;

@:access(openfl.display3D.Context3D)
@:access(openfl.display3D.Program3D)


class GLStage3D {
	
	
	public static inline function render (stage3D:Stage3D, renderSession:RenderSession):Void {
		
		if (stage3D.context3D != null) {
			
			renderSession.blendModeManager.setBlendMode (null);
			
			if (renderSession.shaderManager.currentShader != null) {
				
				renderSession.shaderManager.setShader (null);
				
				if (stage3D.context3D.__program != null) {
					
					stage3D.context3D.__program.__use ();
					
				}
				
			}
			
		}
		
	}
	
	
}