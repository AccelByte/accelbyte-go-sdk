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

// NewPublicGetNamespaceScopedInputValidationByFieldParams creates a new PublicGetNamespaceScopedInputValidationByFieldParams object
// with the default values initialized.
func NewPublicGetNamespaceScopedInputValidationByFieldParams() *PublicGetNamespaceScopedInputValidationByFieldParams {
	var ()
	return &PublicGetNamespaceScopedInputValidationByFieldParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetNamespaceScopedInputValidationByFieldParamsWithTimeout creates a new PublicGetNamespaceScopedInputValidationByFieldParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetNamespaceScopedInputValidationByFieldParamsWithTimeout(timeout time.Duration) *PublicGetNamespaceScopedInputValidationByFieldParams {
	var ()
	return &PublicGetNamespaceScopedInputValidationByFieldParams{

		timeout: timeout,
	}
}

// NewPublicGetNamespaceScopedInputValidationByFieldParamsWithContext creates a new PublicGetNamespaceScopedInputValidationByFieldParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetNamespaceScopedInputValidationByFieldParamsWithContext(ctx context.Context) *PublicGetNamespaceScopedInputValidationByFieldParams {
	var ()
	return &PublicGetNamespaceScopedInputValidationByFieldParams{

		Context: ctx,
	}
}

// NewPublicGetNamespaceScopedInputValidationByFieldParamsWithHTTPClient creates a new PublicGetNamespaceScopedInputValidationByFieldParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetNamespaceScopedInputValidationByFieldParamsWithHTTPClient(client *http.Client) *PublicGetNamespaceScopedInputValidationByFieldParams {
	var ()
	return &PublicGetNamespaceScopedInputValidationByFieldParams{
		HTTPClient: client,
	}
}

/*PublicGetNamespaceScopedInputValidationByFieldParams contains all the parameters to send to the API endpoint
for the public get namespace scoped input validation by field operation typically these are written to a http.Request
*/
type PublicGetNamespaceScopedInputValidationByFieldParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Field
	  Name of the input validation field to get: email, username, displayName, password or avatar

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

// WithTimeout adds the timeout to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WithTimeout(timeout time.Duration) *PublicGetNamespaceScopedInputValidationByFieldParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WithContext(ctx context.Context) *PublicGetNamespaceScopedInputValidationByFieldParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WithHTTPClient(client *http.Client) *PublicGetNamespaceScopedInputValidationByFieldParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithField adds the field to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WithField(field string) *PublicGetNamespaceScopedInputValidationByFieldParams {
	o.SetField(field)
	return o
}

// SetField adds the field to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetField(field string) {
	o.Field = field
}

// WithNamespace adds the namespace to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WithNamespace(namespace string) *PublicGetNamespaceScopedInputValidationByFieldParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get namespace scoped input validation by field params
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetNamespaceScopedInputValidationByFieldParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
