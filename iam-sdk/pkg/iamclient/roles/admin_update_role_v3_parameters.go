// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewAdminUpdateRoleV3Params creates a new AdminUpdateRoleV3Params object
// with the default values initialized.
func NewAdminUpdateRoleV3Params() *AdminUpdateRoleV3Params {
	var ()
	return &AdminUpdateRoleV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateRoleV3ParamsWithTimeout creates a new AdminUpdateRoleV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateRoleV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateRoleV3Params {
	var ()
	return &AdminUpdateRoleV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateRoleV3ParamsWithContext creates a new AdminUpdateRoleV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateRoleV3ParamsWithContext(ctx context.Context) *AdminUpdateRoleV3Params {
	var ()
	return &AdminUpdateRoleV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateRoleV3ParamsWithHTTPClient creates a new AdminUpdateRoleV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateRoleV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateRoleV3Params {
	var ()
	return &AdminUpdateRoleV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateRoleV3Params contains all the parameters to send to the API endpoint
for the admin update role v3 operation typically these are written to a http.Request
*/
type AdminUpdateRoleV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleUpdateRequestV3
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) WithTimeout(timeout time.Duration) *AdminUpdateRoleV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) WithContext(ctx context.Context) *AdminUpdateRoleV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) WithHTTPClient(client *http.Client) *AdminUpdateRoleV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) WithBody(body *iamclientmodels.ModelRoleUpdateRequestV3) *AdminUpdateRoleV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetBody(body *iamclientmodels.ModelRoleUpdateRequestV3) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) WithRoleID(roleID string) *AdminUpdateRoleV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin update role v3 params
func (o *AdminUpdateRoleV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateRoleV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
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
