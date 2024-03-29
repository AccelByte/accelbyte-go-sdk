// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gametelemetry_operations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams creates a new ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams object
// with the default values initialized.
func NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams() *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	var ()
	return &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithTimeout creates a new ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithTimeout(timeout time.Duration) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	var ()
	return &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{

		timeout: timeout,
	}
}

// NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithContext creates a new ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams object
// with the default values initialized, and the ability to set a context for a request
func NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithContext(ctx context.Context) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	var ()
	return &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{

		Context: ctx,
	}
}

// NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithHTTPClient creates a new ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParamsWithHTTPClient(client *http.Client) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	var ()
	return &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams{
		HTTPClient: client,
	}
}

/*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams contains all the parameters to send to the API endpoint
for the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put operation typically these are written to a http.Request
*/
type ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Cookie*/
	Cookie *string
	/*Playtime*/
	Playtime string
	/*SteamID*/
	SteamID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithTimeout(timeout time.Duration) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithContext(ctx context.Context) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithHTTPClient(client *http.Client) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCookie adds the cookie to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithCookie(cookie *string) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetCookie(cookie)
	return o
}

// SetCookie adds the cookie to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetCookie(cookie *string) {
	o.Cookie = cookie
}

// WithPlaytime adds the playtime to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithPlaytime(playtime string) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetPlaytime(playtime)
	return o
}

// SetPlaytime adds the playtime to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetPlaytime(playtime string) {
	o.Playtime = playtime
}

// WithSteamID adds the steamID to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WithSteamID(steamID string) *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams {
	o.SetSteamID(steamID)
	return o
}

// SetSteamID adds the steamId to the protected update playtime game telemetry v1 protected steam ids steam id playtime playtime put params
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) SetSteamID(steamID string) {
	o.SteamID = steamID
}

// WriteToRequest writes these params to a swagger request
func (o *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Cookie != nil {

		// header param Cookie
		if err := r.SetHeaderParam("Cookie", *o.Cookie); err != nil {
			return err
		}

	}

	// path param playtime
	if err := r.SetPathParam("playtime", o.Playtime); err != nil {
		return err
	}

	// path param steamId
	if err := r.SetPathParam("steamId", o.SteamID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
