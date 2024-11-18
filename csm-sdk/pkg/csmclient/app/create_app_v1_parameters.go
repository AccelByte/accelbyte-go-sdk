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

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewCreateAppV1Params creates a new CreateAppV1Params object
// with the default values initialized.
func NewCreateAppV1Params() *CreateAppV1Params {
	var ()
	return &CreateAppV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateAppV1ParamsWithTimeout creates a new CreateAppV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateAppV1ParamsWithTimeout(timeout time.Duration) *CreateAppV1Params {
	var ()
	return &CreateAppV1Params{

		timeout: timeout,
	}
}

// NewCreateAppV1ParamsWithContext creates a new CreateAppV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewCreateAppV1ParamsWithContext(ctx context.Context) *CreateAppV1Params {
	var ()
	return &CreateAppV1Params{

		Context: ctx,
	}
}

// NewCreateAppV1ParamsWithHTTPClient creates a new CreateAppV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateAppV1ParamsWithHTTPClient(client *http.Client) *CreateAppV1Params {
	var ()
	return &CreateAppV1Params{
		HTTPClient: client,
	}
}

/*CreateAppV1Params contains all the parameters to send to the API endpoint
for the create app v1 operation typically these are written to a http.Request
*/
type CreateAppV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedCreateAppV1Request
	/*App
	  App Name. Expected format: (^[A-Za-z0-9\-]*$)

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

// WithTimeout adds the timeout to the create app v1 params
func (o *CreateAppV1Params) WithTimeout(timeout time.Duration) *CreateAppV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create app v1 params
func (o *CreateAppV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create app v1 params
func (o *CreateAppV1Params) WithContext(ctx context.Context) *CreateAppV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create app v1 params
func (o *CreateAppV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create app v1 params
func (o *CreateAppV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create app v1 params
func (o *CreateAppV1Params) WithHTTPClient(client *http.Client) *CreateAppV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create app v1 params
func (o *CreateAppV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create app v1 params
func (o *CreateAppV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateAppV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create app v1 params
func (o *CreateAppV1Params) WithBody(body *csmclientmodels.GeneratedCreateAppV1Request) *CreateAppV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create app v1 params
func (o *CreateAppV1Params) SetBody(body *csmclientmodels.GeneratedCreateAppV1Request) {
	o.Body = body
}

// WithApp adds the app to the create app v1 params
func (o *CreateAppV1Params) WithApp(app string) *CreateAppV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the create app v1 params
func (o *CreateAppV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the create app v1 params
func (o *CreateAppV1Params) WithNamespace(namespace string) *CreateAppV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create app v1 params
func (o *CreateAppV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateAppV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
