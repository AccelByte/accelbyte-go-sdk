// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app

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

// NewDeleteAppV1Params creates a new DeleteAppV1Params object
// with the default values initialized.
func NewDeleteAppV1Params() *DeleteAppV1Params {
	var ()
	return &DeleteAppV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppV1ParamsWithTimeout creates a new DeleteAppV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppV1ParamsWithTimeout(timeout time.Duration) *DeleteAppV1Params {
	var ()
	return &DeleteAppV1Params{

		timeout: timeout,
	}
}

// NewDeleteAppV1ParamsWithContext creates a new DeleteAppV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppV1ParamsWithContext(ctx context.Context) *DeleteAppV1Params {
	var ()
	return &DeleteAppV1Params{

		Context: ctx,
	}
}

// NewDeleteAppV1ParamsWithHTTPClient creates a new DeleteAppV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppV1ParamsWithHTTPClient(client *http.Client) *DeleteAppV1Params {
	var ()
	return &DeleteAppV1Params{
		HTTPClient: client,
	}
}

/*DeleteAppV1Params contains all the parameters to send to the API endpoint
for the delete app v1 operation typically these are written to a http.Request
*/
type DeleteAppV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Name

	*/
	Namespace string
	/*Forced
	  Force App Deletion

	*/
	Forced *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete app v1 params
func (o *DeleteAppV1Params) WithTimeout(timeout time.Duration) *DeleteAppV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete app v1 params
func (o *DeleteAppV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete app v1 params
func (o *DeleteAppV1Params) WithContext(ctx context.Context) *DeleteAppV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete app v1 params
func (o *DeleteAppV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete app v1 params
func (o *DeleteAppV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete app v1 params
func (o *DeleteAppV1Params) WithHTTPClient(client *http.Client) *DeleteAppV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete app v1 params
func (o *DeleteAppV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete app v1 params
func (o *DeleteAppV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete app v1 params
func (o *DeleteAppV1Params) WithApp(app string) *DeleteAppV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete app v1 params
func (o *DeleteAppV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete app v1 params
func (o *DeleteAppV1Params) WithNamespace(namespace string) *DeleteAppV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete app v1 params
func (o *DeleteAppV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithForced adds the forced to the delete app v1 params
func (o *DeleteAppV1Params) WithForced(forced *string) *DeleteAppV1Params {
	o.SetForced(forced)
	return o
}

// SetForced adds the forced to the delete app v1 params
func (o *DeleteAppV1Params) SetForced(forced *string) {
	o.Forced = forced
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
