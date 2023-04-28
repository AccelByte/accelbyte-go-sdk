// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminInviteUserNewV4Params creates a new AdminInviteUserNewV4Params object
// with the default values initialized.
func NewAdminInviteUserNewV4Params() *AdminInviteUserNewV4Params {
	var ()
	return &AdminInviteUserNewV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminInviteUserNewV4ParamsWithTimeout creates a new AdminInviteUserNewV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminInviteUserNewV4ParamsWithTimeout(timeout time.Duration) *AdminInviteUserNewV4Params {
	var ()
	return &AdminInviteUserNewV4Params{

		timeout: timeout,
	}
}

// NewAdminInviteUserNewV4ParamsWithContext creates a new AdminInviteUserNewV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminInviteUserNewV4ParamsWithContext(ctx context.Context) *AdminInviteUserNewV4Params {
	var ()
	return &AdminInviteUserNewV4Params{

		Context: ctx,
	}
}

// NewAdminInviteUserNewV4ParamsWithHTTPClient creates a new AdminInviteUserNewV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminInviteUserNewV4ParamsWithHTTPClient(client *http.Client) *AdminInviteUserNewV4Params {
	var ()
	return &AdminInviteUserNewV4Params{
		HTTPClient: client,
	}
}

/*AdminInviteUserNewV4Params contains all the parameters to send to the API endpoint
for the admin invite user new v4 operation typically these are written to a http.Request
*/
type AdminInviteUserNewV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelInviteUserRequestV4

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) WithTimeout(timeout time.Duration) *AdminInviteUserNewV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) WithContext(ctx context.Context) *AdminInviteUserNewV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) WithHTTPClient(client *http.Client) *AdminInviteUserNewV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) WithBody(body *iamclientmodels.ModelInviteUserRequestV4) *AdminInviteUserNewV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin invite user new v4 params
func (o *AdminInviteUserNewV4Params) SetBody(body *iamclientmodels.ModelInviteUserRequestV4) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminInviteUserNewV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
