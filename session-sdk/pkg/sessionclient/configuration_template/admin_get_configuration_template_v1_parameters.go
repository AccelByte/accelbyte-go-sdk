// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

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

// NewAdminGetConfigurationTemplateV1Params creates a new AdminGetConfigurationTemplateV1Params object
// with the default values initialized.
func NewAdminGetConfigurationTemplateV1Params() *AdminGetConfigurationTemplateV1Params {
	var ()
	return &AdminGetConfigurationTemplateV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetConfigurationTemplateV1ParamsWithTimeout creates a new AdminGetConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetConfigurationTemplateV1ParamsWithTimeout(timeout time.Duration) *AdminGetConfigurationTemplateV1Params {
	var ()
	return &AdminGetConfigurationTemplateV1Params{

		timeout: timeout,
	}
}

// NewAdminGetConfigurationTemplateV1ParamsWithContext creates a new AdminGetConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetConfigurationTemplateV1ParamsWithContext(ctx context.Context) *AdminGetConfigurationTemplateV1Params {
	var ()
	return &AdminGetConfigurationTemplateV1Params{

		Context: ctx,
	}
}

// NewAdminGetConfigurationTemplateV1ParamsWithHTTPClient creates a new AdminGetConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetConfigurationTemplateV1ParamsWithHTTPClient(client *http.Client) *AdminGetConfigurationTemplateV1Params {
	var ()
	return &AdminGetConfigurationTemplateV1Params{
		HTTPClient: client,
	}
}

/*AdminGetConfigurationTemplateV1Params contains all the parameters to send to the API endpoint
for the admin get configuration template v1 operation typically these are written to a http.Request
*/
type AdminGetConfigurationTemplateV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  configuration name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) WithTimeout(timeout time.Duration) *AdminGetConfigurationTemplateV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) WithContext(ctx context.Context) *AdminGetConfigurationTemplateV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) WithHTTPClient(client *http.Client) *AdminGetConfigurationTemplateV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetConfigurationTemplateV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithName adds the name to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) WithName(name string) *AdminGetConfigurationTemplateV1Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) WithNamespace(namespace string) *AdminGetConfigurationTemplateV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get configuration template v1 params
func (o *AdminGetConfigurationTemplateV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetConfigurationTemplateV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
