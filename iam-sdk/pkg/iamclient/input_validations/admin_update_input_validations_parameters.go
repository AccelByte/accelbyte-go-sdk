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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateInputValidationsParams creates a new AdminUpdateInputValidationsParams object
// with the default values initialized.
func NewAdminUpdateInputValidationsParams() *AdminUpdateInputValidationsParams {
	var ()
	return &AdminUpdateInputValidationsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateInputValidationsParamsWithTimeout creates a new AdminUpdateInputValidationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateInputValidationsParamsWithTimeout(timeout time.Duration) *AdminUpdateInputValidationsParams {
	var ()
	return &AdminUpdateInputValidationsParams{

		timeout: timeout,
	}
}

// NewAdminUpdateInputValidationsParamsWithContext creates a new AdminUpdateInputValidationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateInputValidationsParamsWithContext(ctx context.Context) *AdminUpdateInputValidationsParams {
	var ()
	return &AdminUpdateInputValidationsParams{

		Context: ctx,
	}
}

// NewAdminUpdateInputValidationsParamsWithHTTPClient creates a new AdminUpdateInputValidationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateInputValidationsParamsWithHTTPClient(client *http.Client) *AdminUpdateInputValidationsParams {
	var ()
	return &AdminUpdateInputValidationsParams{
		HTTPClient: client,
	}
}

/*AdminUpdateInputValidationsParams contains all the parameters to send to the API endpoint
for the admin update input validations operation typically these are written to a http.Request
*/
type AdminUpdateInputValidationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*iamclientmodels.ModelInputValidationUpdatePayload

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) WithTimeout(timeout time.Duration) *AdminUpdateInputValidationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) WithContext(ctx context.Context) *AdminUpdateInputValidationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) WithHTTPClient(client *http.Client) *AdminUpdateInputValidationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) WithBody(body []*iamclientmodels.ModelInputValidationUpdatePayload) *AdminUpdateInputValidationsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update input validations params
func (o *AdminUpdateInputValidationsParams) SetBody(body []*iamclientmodels.ModelInputValidationUpdatePayload) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateInputValidationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
