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

// NewAdminUpdateAgeRestrictionConfigV3Params creates a new AdminUpdateAgeRestrictionConfigV3Params object
// with the default values initialized.
func NewAdminUpdateAgeRestrictionConfigV3Params() *AdminUpdateAgeRestrictionConfigV3Params {
	var ()
	return &AdminUpdateAgeRestrictionConfigV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateAgeRestrictionConfigV3ParamsWithTimeout creates a new AdminUpdateAgeRestrictionConfigV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateAgeRestrictionConfigV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateAgeRestrictionConfigV3Params {
	var ()
	return &AdminUpdateAgeRestrictionConfigV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateAgeRestrictionConfigV3ParamsWithContext creates a new AdminUpdateAgeRestrictionConfigV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateAgeRestrictionConfigV3ParamsWithContext(ctx context.Context) *AdminUpdateAgeRestrictionConfigV3Params {
	var ()
	return &AdminUpdateAgeRestrictionConfigV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateAgeRestrictionConfigV3ParamsWithHTTPClient creates a new AdminUpdateAgeRestrictionConfigV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateAgeRestrictionConfigV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateAgeRestrictionConfigV3Params {
	var ()
	return &AdminUpdateAgeRestrictionConfigV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateAgeRestrictionConfigV3Params contains all the parameters to send to the API endpoint
for the admin update age restriction config v3 operation typically these are written to a http.Request
*/
type AdminUpdateAgeRestrictionConfigV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelAgeRestrictionRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) WithTimeout(timeout time.Duration) *AdminUpdateAgeRestrictionConfigV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) WithContext(ctx context.Context) *AdminUpdateAgeRestrictionConfigV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) WithHTTPClient(client *http.Client) *AdminUpdateAgeRestrictionConfigV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) WithBody(body *iamclientmodels.ModelAgeRestrictionRequestV3) *AdminUpdateAgeRestrictionConfigV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetBody(body *iamclientmodels.ModelAgeRestrictionRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) WithNamespace(namespace string) *AdminUpdateAgeRestrictionConfigV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update age restriction config v3 params
func (o *AdminUpdateAgeRestrictionConfigV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateAgeRestrictionConfigV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
