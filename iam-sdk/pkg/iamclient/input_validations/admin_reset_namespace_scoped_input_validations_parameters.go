// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

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

// NewAdminResetNamespaceScopedInputValidationsParams creates a new AdminResetNamespaceScopedInputValidationsParams object
// with the default values initialized.
func NewAdminResetNamespaceScopedInputValidationsParams() *AdminResetNamespaceScopedInputValidationsParams {
	var ()
	return &AdminResetNamespaceScopedInputValidationsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetNamespaceScopedInputValidationsParamsWithTimeout creates a new AdminResetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetNamespaceScopedInputValidationsParamsWithTimeout(timeout time.Duration) *AdminResetNamespaceScopedInputValidationsParams {
	var ()
	return &AdminResetNamespaceScopedInputValidationsParams{

		timeout: timeout,
	}
}

// NewAdminResetNamespaceScopedInputValidationsParamsWithContext creates a new AdminResetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetNamespaceScopedInputValidationsParamsWithContext(ctx context.Context) *AdminResetNamespaceScopedInputValidationsParams {
	var ()
	return &AdminResetNamespaceScopedInputValidationsParams{

		Context: ctx,
	}
}

// NewAdminResetNamespaceScopedInputValidationsParamsWithHTTPClient creates a new AdminResetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetNamespaceScopedInputValidationsParamsWithHTTPClient(client *http.Client) *AdminResetNamespaceScopedInputValidationsParams {
	var ()
	return &AdminResetNamespaceScopedInputValidationsParams{
		HTTPClient: client,
	}
}

/*AdminResetNamespaceScopedInputValidationsParams contains all the parameters to send to the API endpoint
for the admin reset namespace scoped input validations operation typically these are written to a http.Request
*/
type AdminResetNamespaceScopedInputValidationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Field
	  Name of the input validation field to reset: email, username, displayName, password, avatar

	*/
	Field string
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) WithTimeout(timeout time.Duration) *AdminResetNamespaceScopedInputValidationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) WithContext(ctx context.Context) *AdminResetNamespaceScopedInputValidationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) WithHTTPClient(client *http.Client) *AdminResetNamespaceScopedInputValidationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetNamespaceScopedInputValidationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithField adds the field to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) WithField(field string) *AdminResetNamespaceScopedInputValidationsParams {
	o.SetField(field)
	return o
}

// SetField adds the field to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetField(field string) {
	o.Field = field
}

// WithNamespace adds the namespace to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) WithNamespace(namespace string) *AdminResetNamespaceScopedInputValidationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset namespace scoped input validations params
func (o *AdminResetNamespaceScopedInputValidationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetNamespaceScopedInputValidationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param field
	if err := r.SetPathParam("field", o.Field); err != nil {
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
