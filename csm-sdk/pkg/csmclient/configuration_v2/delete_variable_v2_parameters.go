// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_v2

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

// NewDeleteVariableV2Params creates a new DeleteVariableV2Params object
// with the default values initialized.
func NewDeleteVariableV2Params() *DeleteVariableV2Params {
	var ()
	return &DeleteVariableV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteVariableV2ParamsWithTimeout creates a new DeleteVariableV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteVariableV2ParamsWithTimeout(timeout time.Duration) *DeleteVariableV2Params {
	var ()
	return &DeleteVariableV2Params{

		timeout: timeout,
	}
}

// NewDeleteVariableV2ParamsWithContext creates a new DeleteVariableV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteVariableV2ParamsWithContext(ctx context.Context) *DeleteVariableV2Params {
	var ()
	return &DeleteVariableV2Params{

		Context: ctx,
	}
}

// NewDeleteVariableV2ParamsWithHTTPClient creates a new DeleteVariableV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteVariableV2ParamsWithHTTPClient(client *http.Client) *DeleteVariableV2Params {
	var ()
	return &DeleteVariableV2Params{
		HTTPClient: client,
	}
}

/*DeleteVariableV2Params contains all the parameters to send to the API endpoint
for the delete variable v2 operation typically these are written to a http.Request
*/
type DeleteVariableV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*ConfigID
	  Config ID

	*/
	ConfigID string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete variable v2 params
func (o *DeleteVariableV2Params) WithTimeout(timeout time.Duration) *DeleteVariableV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete variable v2 params
func (o *DeleteVariableV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete variable v2 params
func (o *DeleteVariableV2Params) WithContext(ctx context.Context) *DeleteVariableV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete variable v2 params
func (o *DeleteVariableV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete variable v2 params
func (o *DeleteVariableV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete variable v2 params
func (o *DeleteVariableV2Params) WithHTTPClient(client *http.Client) *DeleteVariableV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete variable v2 params
func (o *DeleteVariableV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete variable v2 params
func (o *DeleteVariableV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteVariableV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete variable v2 params
func (o *DeleteVariableV2Params) WithApp(app string) *DeleteVariableV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete variable v2 params
func (o *DeleteVariableV2Params) SetApp(app string) {
	o.App = app
}

// WithConfigID adds the configID to the delete variable v2 params
func (o *DeleteVariableV2Params) WithConfigID(configID string) *DeleteVariableV2Params {
	o.SetConfigID(configID)
	return o
}

// SetConfigID adds the configId to the delete variable v2 params
func (o *DeleteVariableV2Params) SetConfigID(configID string) {
	o.ConfigID = configID
}

// WithNamespace adds the namespace to the delete variable v2 params
func (o *DeleteVariableV2Params) WithNamespace(namespace string) *DeleteVariableV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete variable v2 params
func (o *DeleteVariableV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteVariableV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param configId
	if err := r.SetPathParam("configId", o.ConfigID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
