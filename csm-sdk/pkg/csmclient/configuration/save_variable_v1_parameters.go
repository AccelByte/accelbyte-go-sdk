// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewSaveVariableV1Params creates a new SaveVariableV1Params object
// with the default values initialized.
func NewSaveVariableV1Params() *SaveVariableV1Params {
	var ()
	return &SaveVariableV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSaveVariableV1ParamsWithTimeout creates a new SaveVariableV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSaveVariableV1ParamsWithTimeout(timeout time.Duration) *SaveVariableV1Params {
	var ()
	return &SaveVariableV1Params{

		timeout: timeout,
	}
}

// NewSaveVariableV1ParamsWithContext creates a new SaveVariableV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewSaveVariableV1ParamsWithContext(ctx context.Context) *SaveVariableV1Params {
	var ()
	return &SaveVariableV1Params{

		Context: ctx,
	}
}

// NewSaveVariableV1ParamsWithHTTPClient creates a new SaveVariableV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSaveVariableV1ParamsWithHTTPClient(client *http.Client) *SaveVariableV1Params {
	var ()
	return &SaveVariableV1Params{
		HTTPClient: client,
	}
}

/*SaveVariableV1Params contains all the parameters to send to the API endpoint
for the save variable v1 operation typically these are written to a http.Request
*/
type SaveVariableV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedSaveConfigurationV1Request
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the save variable v1 params
func (o *SaveVariableV1Params) WithTimeout(timeout time.Duration) *SaveVariableV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the save variable v1 params
func (o *SaveVariableV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the save variable v1 params
func (o *SaveVariableV1Params) WithContext(ctx context.Context) *SaveVariableV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the save variable v1 params
func (o *SaveVariableV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the save variable v1 params
func (o *SaveVariableV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the save variable v1 params
func (o *SaveVariableV1Params) WithHTTPClient(client *http.Client) *SaveVariableV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the save variable v1 params
func (o *SaveVariableV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the save variable v1 params
func (o *SaveVariableV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SaveVariableV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the save variable v1 params
func (o *SaveVariableV1Params) WithBody(body *csmclientmodels.GeneratedSaveConfigurationV1Request) *SaveVariableV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the save variable v1 params
func (o *SaveVariableV1Params) SetBody(body *csmclientmodels.GeneratedSaveConfigurationV1Request) {
	o.Body = body
}

// WithApp adds the app to the save variable v1 params
func (o *SaveVariableV1Params) WithApp(app string) *SaveVariableV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the save variable v1 params
func (o *SaveVariableV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the save variable v1 params
func (o *SaveVariableV1Params) WithNamespace(namespace string) *SaveVariableV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the save variable v1 params
func (o *SaveVariableV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SaveVariableV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
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
