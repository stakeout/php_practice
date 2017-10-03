var gulp = require("gulp"),
		browserSync = require('browser-sync');


gulp.task('server', function(){
		browserSync({
			// port: 9000,
			proxy: "php.dev"
			// server: {
			// 	baseDir: 'app/calculator'
			// }
		});
});
gulp.task('watch', function(){
		gulp.watch([
			'app/**/*.php',
			'app/**/*.html',
			'app/**/**/*.css',
			'app/**/**/*.tpl'
			]).on('change', browserSync.reload);
});
gulp.task('default', ['server', 'watch']);
