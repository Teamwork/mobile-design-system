package com.teamwork.mobile.design

import android.os.Bundle
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
import com.teamwork.design.TeamworkTheme
import com.teamwork.design.generated.BorderWidth
import com.teamwork.design.generated.TeamworkTypography

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
                            text = "headlineLarge",
                            style = TeamworkTypography.headlineLarge
                        )
                        Text(
                            text = "headlineMedium",
                            style = TeamworkTypography.headlineMedium
                        )
                        Text(
                            modifier = Modifier.border(
                                border = BorderStroke(
                                    width = BorderWidth.sm,
                                    color = TeamworkTheme.color.border.borderSuccessHover
                                )
                            ),
                            text = "headlineSmall",
                            style = TeamworkTypography.headlineSmall
                        )
                        Text(
                            text = "bodyMedium",
                            style = TeamworkTypography.bodyMedium
                        )
                        Text(
                            text = "bodySmall",
                            style = TeamworkTypography.bodySmall
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
                    }
                }
            }
        }
    }

}
