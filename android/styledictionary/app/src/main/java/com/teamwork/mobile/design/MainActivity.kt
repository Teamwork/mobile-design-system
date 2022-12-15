package com.teamwork.mobile.design

import android.os.Bundle
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.viewinterop.AndroidView
import com.teamwork.design.TeamworkTheme

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            TeamworkTheme {
                Surface(
                    modifier = Modifier.fillMaxSize()
                ) {
                    Column {
                        Text(
                            text = "Headline Large",
                            style = TeamworkTheme.typography.headlineLarge
                        )
                        Text(
                            text = "Headline Medium",
                            style = TeamworkTheme.typography.headlineMedium
                        )
                        Text(
                            modifier = Modifier.border(
                                border = BorderStroke(
                                    width = TeamworkTheme.borderWidth.sm,
                                    color = TeamworkTheme.color.border.borderSuccessHover
                                )
                            ),
                            text = "Headline Small",
                            style = TeamworkTheme.typography.headlineSmall
                        )
                        Text(
                            text = "Body Medium",
                            style = TeamworkTheme.typography.bodyMedium
                        )
                        Text(
                            text = "Body Small",
                            style = TeamworkTheme.typography.bodySmall
                        )

                        Button(
                            onClick = { /*TODO*/ },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = TeamworkTheme.color.surface.surfaceActionDefault
                            )
                        ) {
                            Text(
                                text = "colorSurfaceActionDefault"
                            )
                        }
                        Button(
                            onClick = { /*TODO*/ },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = TeamworkTheme.color.surface.surfaceCriticalDefault
                            )
                        ) {
                            Text(
                                text = "colorSurfaceCriticalDefault"
                            )
                        }

                        val viewParent = LocalView.current.rootView
                        AndroidView(factory = {
                            LayoutInflater.from(it).inflate(R.layout.android_views_typography, viewParent as ViewGroup, false)
                        })
                    }
                }
            }
        }
    }

}
