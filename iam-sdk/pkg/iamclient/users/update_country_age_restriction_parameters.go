// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdateCountryAgeRestrictionParams creates a new UpdateCountryAgeRestrictionParams object
// with the default values initialized.
func NewUpdateCountryAgeRestrictionParams() *UpdateCountryAgeRestrictionParams {
	var ()
	return &UpdateCountryAgeRestrictionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCountryAgeRestrictionParamsWithTimeout creates a new UpdateCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCountryAgeRestrictionParamsWithTimeout(timeout time.Duration) *UpdateCountryAgeRestrictionParams {
	var ()
	return &UpdateCountryAgeRestrictionParams{

		timeout: timeout,
	}
}

// NewUpdateCountryAgeRestrictionParamsWithContext creates a new UpdateCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCountryAgeRestrictionParamsWithContext(ctx context.Context) *UpdateCountryAgeRestrictionParams {
	var ()
	return &UpdateCountryAgeRestrictionParams{

		Context: ctx,
	}
}

// NewUpdateCountryAgeRestrictionParamsWithHTTPClient creates a new UpdateCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCountryAgeRestrictionParamsWithHTTPClient(client *http.Client) *UpdateCountryAgeRestrictionParams {
	var ()
	return &UpdateCountryAgeRestrictionParams{
		HTTPClient: client,
	}
}

/*UpdateCountryAgeRestrictionParams contains all the parameters to send to the API endpoint
for the update country age restriction operation typically these are written to a http.Request
*/
type UpdateCountryAgeRestrictionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelCountryAgeRestrictionRequest
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithTimeout(timeout time.Duration) *UpdateCountryAgeRestrictionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithContext(ctx context.Context) *UpdateCountryAgeRestrictionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithHTTPClient(client *http.Client) *UpdateCountryAgeRestrictionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithBody(body *iamclientmodels.ModelCountryAgeRestrictionRequest) *UpdateCountryAgeRestrictionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetBody(body *iamclientmodels.ModelCountryAgeRestrictionRequest) {
	o.Body = body
}

// WithCountryCode adds the countryCode to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithCountryCode(countryCode string) *UpdateCountryAgeRestrictionParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) WithNamespace(namespace string) *UpdateCountryAgeRestrictionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update country age restriction params
func (o *UpdateCountryAgeRestrictionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCountryAgeRestrictionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
