// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewAdminCreateExtensionCategoryParams creates a new AdminCreateExtensionCategoryParams object
// with the default values initialized.
func NewAdminCreateExtensionCategoryParams() *AdminCreateExtensionCategoryParams {
	var ()
	return &AdminCreateExtensionCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateExtensionCategoryParamsWithTimeout creates a new AdminCreateExtensionCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateExtensionCategoryParamsWithTimeout(timeout time.Duration) *AdminCreateExtensionCategoryParams {
	var ()
	return &AdminCreateExtensionCategoryParams{

		timeout: timeout,
	}
}

// NewAdminCreateExtensionCategoryParamsWithContext creates a new AdminCreateExtensionCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateExtensionCategoryParamsWithContext(ctx context.Context) *AdminCreateExtensionCategoryParams {
	var ()
	return &AdminCreateExtensionCategoryParams{

		Context: ctx,
	}
}

// NewAdminCreateExtensionCategoryParamsWithHTTPClient creates a new AdminCreateExtensionCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateExtensionCategoryParamsWithHTTPClient(client *http.Client) *AdminCreateExtensionCategoryParams {
	var ()
	return &AdminCreateExtensionCategoryParams{
		HTTPClient: client,
	}
}

/*AdminCreateExtensionCategoryParams contains all the parameters to send to the API endpoint
for the admin create extension category operation typically these are written to a http.Request
*/
type AdminCreateExtensionCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiExtensionCategoryAPIRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) WithTimeout(timeout time.Duration) *AdminCreateExtensionCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) WithContext(ctx context.Context) *AdminCreateExtensionCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) WithHTTPClient(client *http.Client) *AdminCreateExtensionCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) WithBody(body *reportingclientmodels.RestapiExtensionCategoryAPIRequest) *AdminCreateExtensionCategoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create extension category params
func (o *AdminCreateExtensionCategoryParams) SetBody(body *reportingclientmodels.RestapiExtensionCategoryAPIRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateExtensionCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
