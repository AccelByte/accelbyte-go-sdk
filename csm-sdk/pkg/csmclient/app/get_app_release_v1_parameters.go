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

// NewGetAppReleaseV1Params creates a new GetAppReleaseV1Params object
// with the default values initialized.
func NewGetAppReleaseV1Params() *GetAppReleaseV1Params {
	var ()
	return &GetAppReleaseV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAppReleaseV1ParamsWithTimeout creates a new GetAppReleaseV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAppReleaseV1ParamsWithTimeout(timeout time.Duration) *GetAppReleaseV1Params {
	var ()
	return &GetAppReleaseV1Params{

		timeout: timeout,
	}
}

// NewGetAppReleaseV1ParamsWithContext creates a new GetAppReleaseV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAppReleaseV1ParamsWithContext(ctx context.Context) *GetAppReleaseV1Params {
	var ()
	return &GetAppReleaseV1Params{

		Context: ctx,
	}
}

// NewGetAppReleaseV1ParamsWithHTTPClient creates a new GetAppReleaseV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAppReleaseV1ParamsWithHTTPClient(client *http.Client) *GetAppReleaseV1Params {
	var ()
	return &GetAppReleaseV1Params{
		HTTPClient: client,
	}
}

/*GetAppReleaseV1Params contains all the parameters to send to the API endpoint
for the get app release v1 operation typically these are written to a http.Request
*/
type GetAppReleaseV1Params struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get app release v1 params
func (o *GetAppReleaseV1Params) WithTimeout(timeout time.Duration) *GetAppReleaseV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get app release v1 params
func (o *GetAppReleaseV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get app release v1 params
func (o *GetAppReleaseV1Params) WithContext(ctx context.Context) *GetAppReleaseV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get app release v1 params
func (o *GetAppReleaseV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get app release v1 params
func (o *GetAppReleaseV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get app release v1 params
func (o *GetAppReleaseV1Params) WithHTTPClient(client *http.Client) *GetAppReleaseV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get app release v1 params
func (o *GetAppReleaseV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get app release v1 params
func (o *GetAppReleaseV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAppReleaseV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the get app release v1 params
func (o *GetAppReleaseV1Params) WithApp(app string) *GetAppReleaseV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the get app release v1 params
func (o *GetAppReleaseV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the get app release v1 params
func (o *GetAppReleaseV1Params) WithNamespace(namespace string) *GetAppReleaseV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get app release v1 params
func (o *GetAppReleaseV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAppReleaseV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
