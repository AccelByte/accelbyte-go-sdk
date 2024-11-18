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

// NewSaveSecretV1Params creates a new SaveSecretV1Params object
// with the default values initialized.
func NewSaveSecretV1Params() *SaveSecretV1Params {
	var ()
	return &SaveSecretV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSaveSecretV1ParamsWithTimeout creates a new SaveSecretV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSaveSecretV1ParamsWithTimeout(timeout time.Duration) *SaveSecretV1Params {
	var ()
	return &SaveSecretV1Params{

		timeout: timeout,
	}
}

// NewSaveSecretV1ParamsWithContext creates a new SaveSecretV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewSaveSecretV1ParamsWithContext(ctx context.Context) *SaveSecretV1Params {
	var ()
	return &SaveSecretV1Params{

		Context: ctx,
	}
}

// NewSaveSecretV1ParamsWithHTTPClient creates a new SaveSecretV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSaveSecretV1ParamsWithHTTPClient(client *http.Client) *SaveSecretV1Params {
	var ()
	return &SaveSecretV1Params{
		HTTPClient: client,
	}
}

/*SaveSecretV1Params contains all the parameters to send to the API endpoint
for the save secret v1 operation typically these are written to a http.Request
*/
type SaveSecretV1Params struct {

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

// WithTimeout adds the timeout to the save secret v1 params
func (o *SaveSecretV1Params) WithTimeout(timeout time.Duration) *SaveSecretV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the save secret v1 params
func (o *SaveSecretV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the save secret v1 params
func (o *SaveSecretV1Params) WithContext(ctx context.Context) *SaveSecretV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the save secret v1 params
func (o *SaveSecretV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the save secret v1 params
func (o *SaveSecretV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the save secret v1 params
func (o *SaveSecretV1Params) WithHTTPClient(client *http.Client) *SaveSecretV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the save secret v1 params
func (o *SaveSecretV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the save secret v1 params
func (o *SaveSecretV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SaveSecretV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the save secret v1 params
func (o *SaveSecretV1Params) WithBody(body *csmclientmodels.GeneratedSaveConfigurationV1Request) *SaveSecretV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the save secret v1 params
func (o *SaveSecretV1Params) SetBody(body *csmclientmodels.GeneratedSaveConfigurationV1Request) {
	o.Body = body
}

// WithApp adds the app to the save secret v1 params
func (o *SaveSecretV1Params) WithApp(app string) *SaveSecretV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the save secret v1 params
func (o *SaveSecretV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the save secret v1 params
func (o *SaveSecretV1Params) WithNamespace(namespace string) *SaveSecretV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the save secret v1 params
func (o *SaveSecretV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SaveSecretV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
