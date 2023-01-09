@file:Suppress("unused")

package com.teamwork.design

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.ReadOnlyComposable
import androidx.compose.runtime.compositionLocalOf
import com.teamwork.design.TeamworkTheme.shapes
import com.teamwork.design.generated.*
import com.teamwork.design.m3.AppTheme

// defaults to showing the Light colours
private val LocalTeamworkColors = compositionLocalOf { LightColors }

/**
 * Provides Composition local references to the colours, fonts etc.
 * For convenience there are extension properties [TeamworkColors.system] and [TeamworkTypography.system] to allow easy access to the
 * tokens defined by [MaterialTheme]. [shapes] also is an alias to [MaterialTheme.shapes] since we don't define any of our own shape
 * tokens. This way we should be able to use [TeamworkTheme] for all tokens.
 */
@Suppress("MemberVisibilityCanBePrivate")
object TeamworkTheme {

    val color
        @Composable
        @ReadOnlyComposable
        get() = LocalTeamworkColors.current

    val shapes: Shapes
        @Composable
        @ReadOnlyComposable
        get() = MaterialTheme.shapes

    val typography = TeamworkTypography

    val borderRadius = BorderRadius

    val borderWidth = BorderWidth

    val lineHeights = LineHeights

    val spacing = Spacing

}


//region extension functions to alias the MaterialTheme into our TeamworkTheme

val TeamworkColors.system: ColorScheme
    @Composable
    @ReadOnlyComposable
    get() = MaterialTheme.colorScheme

val TeamworkTypography.system: androidx.compose.material3.Typography
    @Composable
    @ReadOnlyComposable
    get() = MaterialTheme.typography

//endregion


/**
 * A [MaterialTheme] which also provides the Teamwork Design Tokens via [TeamworkTheme.color] etc.
 */
@Composable
fun TeamworkTheme(content: @Composable () -> Unit) {
    MaterialTheme.colorScheme.surface
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
