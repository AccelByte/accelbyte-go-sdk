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

// NewDeleteSecretV2Params creates a new DeleteSecretV2Params object
// with the default values initialized.
func NewDeleteSecretV2Params() *DeleteSecretV2Params {
	var ()
	return &DeleteSecretV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSecretV2ParamsWithTimeout creates a new DeleteSecretV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSecretV2ParamsWithTimeout(timeout time.Duration) *DeleteSecretV2Params {
	var ()
	return &DeleteSecretV2Params{

		timeout: timeout,
	}
}

// NewDeleteSecretV2ParamsWithContext creates a new DeleteSecretV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSecretV2ParamsWithContext(ctx context.Context) *DeleteSecretV2Params {
	var ()
	return &DeleteSecretV2Params{

		Context: ctx,
	}
}

// NewDeleteSecretV2ParamsWithHTTPClient creates a new DeleteSecretV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSecretV2ParamsWithHTTPClient(client *http.Client) *DeleteSecretV2Params {
	var ()
	return &DeleteSecretV2Params{
		HTTPClient: client,
	}
}

/*DeleteSecretV2Params contains all the parameters to send to the API endpoint
for the delete secret v2 operation typically these are written to a http.Request
*/
type DeleteSecretV2Params struct {

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

// WithTimeout adds the timeout to the delete secret v2 params
func (o *DeleteSecretV2Params) WithTimeout(timeout time.Duration) *DeleteSecretV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete secret v2 params
func (o *DeleteSecretV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete secret v2 params
func (o *DeleteSecretV2Params) WithContext(ctx context.Context) *DeleteSecretV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete secret v2 params
func (o *DeleteSecretV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete secret v2 params
func (o *DeleteSecretV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete secret v2 params
func (o *DeleteSecretV2Params) WithHTTPClient(client *http.Client) *DeleteSecretV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete secret v2 params
func (o *DeleteSecretV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete secret v2 params
func (o *DeleteSecretV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSecretV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete secret v2 params
func (o *DeleteSecretV2Params) WithApp(app string) *DeleteSecretV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete secret v2 params
func (o *DeleteSecretV2Params) SetApp(app string) {
	o.App = app
}

// WithConfigID adds the configID to the delete secret v2 params
func (o *DeleteSecretV2Params) WithConfigID(configID string) *DeleteSecretV2Params {
	o.SetConfigID(configID)
	return o
}

// SetConfigID adds the configId to the delete secret v2 params
func (o *DeleteSecretV2Params) SetConfigID(configID string) {
	o.ConfigID = configID
}

// WithNamespace adds the namespace to the delete secret v2 params
func (o *DeleteSecretV2Params) WithNamespace(namespace string) *DeleteSecretV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete secret v2 params
func (o *DeleteSecretV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSecretV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
