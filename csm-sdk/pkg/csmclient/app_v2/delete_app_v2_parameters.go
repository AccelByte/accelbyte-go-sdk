// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_v2

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

// NewDeleteAppV2Params creates a new DeleteAppV2Params object
// with the default values initialized.
func NewDeleteAppV2Params() *DeleteAppV2Params {
	var ()
	return &DeleteAppV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppV2ParamsWithTimeout creates a new DeleteAppV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppV2ParamsWithTimeout(timeout time.Duration) *DeleteAppV2Params {
	var ()
	return &DeleteAppV2Params{

		timeout: timeout,
	}
}

// NewDeleteAppV2ParamsWithContext creates a new DeleteAppV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppV2ParamsWithContext(ctx context.Context) *DeleteAppV2Params {
	var ()
	return &DeleteAppV2Params{

		Context: ctx,
	}
}

// NewDeleteAppV2ParamsWithHTTPClient creates a new DeleteAppV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppV2ParamsWithHTTPClient(client *http.Client) *DeleteAppV2Params {
	var ()
	return &DeleteAppV2Params{
		HTTPClient: client,
	}
}

/*DeleteAppV2Params contains all the parameters to send to the API endpoint
for the delete app v2 operation typically these are written to a http.Request
*/
type DeleteAppV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*Forced
	  Force app deletion, if 'true' will proceed delete regardless of current app status (default: false)

	*/
	Forced *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete app v2 params
func (o *DeleteAppV2Params) WithTimeout(timeout time.Duration) *DeleteAppV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete app v2 params
func (o *DeleteAppV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete app v2 params
func (o *DeleteAppV2Params) WithContext(ctx context.Context) *DeleteAppV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete app v2 params
func (o *DeleteAppV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete app v2 params
func (o *DeleteAppV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete app v2 params
func (o *DeleteAppV2Params) WithHTTPClient(client *http.Client) *DeleteAppV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete app v2 params
func (o *DeleteAppV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete app v2 params
func (o *DeleteAppV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete app v2 params
func (o *DeleteAppV2Params) WithApp(app string) *DeleteAppV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete app v2 params
func (o *DeleteAppV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete app v2 params
func (o *DeleteAppV2Params) WithNamespace(namespace string) *DeleteAppV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete app v2 params
func (o *DeleteAppV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithForced adds the forced to the delete app v2 params
func (o *DeleteAppV2Params) WithForced(forced *string) *DeleteAppV2Params {
	o.SetForced(forced)
	return o
}

// SetForced adds the forced to the delete app v2 params
func (o *DeleteAppV2Params) SetForced(forced *string) {
	o.Forced = forced
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Forced != nil {

		// query param forced
		var qrForced string
		if o.Forced != nil {
			qrForced = *o.Forced
		}
		qForced := qrForced
		if qForced != "" {
			if err := r.SetQueryParam("forced", qForced); err != nil {
				return err
			}
		}

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
