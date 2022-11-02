package com.teamwork.design

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import com.teamwork.design.generated.DarkColors
import com.teamwork.design.generated.LightColors
import com.teamwork.design.m3.AppTheme

object TeamworkTheme {

    val color
        @Composable
        get() = LocalTeamworkColors.current

}


// defaults to showing the Light colours
private val LocalTeamworkColors = compositionLocalOf { LightColors }


@Composable
fun TeamworkTheme(content: @Composable () -> Unit) {
    AppTheme {
        val teamworkColors = if (isSystemInDarkTheme()) {
            DarkColors
        } else {
            LightColors
        }

        // Bind elevation as the value for LocalElevations
        CompositionLocalProvider(LocalTeamworkColors provides teamworkColors) {
            content()
        }
    }
}
