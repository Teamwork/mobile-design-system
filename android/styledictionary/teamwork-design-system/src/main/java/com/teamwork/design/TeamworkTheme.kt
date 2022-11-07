package com.teamwork.design

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import com.teamwork.design.generated.*
import com.teamwork.design.m3.AppTheme

/**
 * Provides Composition local references to the colours, fonts etc.
 */
object TeamworkTheme {

    val color
        @Composable
        get() = LocalTeamworkColors.current

    val typography = TeamworkTypography

    val borderRadius = BorderRadius

    val borderWidth = BorderWidth

    val lineHeights = LineHeights

    val spacing = Spacing

}


// defaults to showing the Light colours
private val LocalTeamworkColors = compositionLocalOf { LightColors }


/**
 * A [MaterialTheme] which also provides the Teamwork Design Tokens via [TeamworkTheme.color] etc.
 */
@Composable
fun TeamworkTheme(content: @Composable () -> Unit) {
    AppTheme {
        val teamworkColors = if (isSystemInDarkTheme()) {
            DarkColors
        } else {
            LightColors
        }

        CompositionLocalProvider(LocalTeamworkColors provides teamworkColors) {
            content()
        }
    }
}
