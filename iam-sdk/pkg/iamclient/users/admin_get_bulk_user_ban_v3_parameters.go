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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminGetBulkUserBanV3Params creates a new AdminGetBulkUserBanV3Params object
// with the default values initialized.
func NewAdminGetBulkUserBanV3Params() *AdminGetBulkUserBanV3Params {
	var ()
	return &AdminGetBulkUserBanV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetBulkUserBanV3ParamsWithTimeout creates a new AdminGetBulkUserBanV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetBulkUserBanV3ParamsWithTimeout(timeout time.Duration) *AdminGetBulkUserBanV3Params {
	var ()
	return &AdminGetBulkUserBanV3Params{

		timeout: timeout,
	}
}

// NewAdminGetBulkUserBanV3ParamsWithContext creates a new AdminGetBulkUserBanV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetBulkUserBanV3ParamsWithContext(ctx context.Context) *AdminGetBulkUserBanV3Params {
	var ()
	return &AdminGetBulkUserBanV3Params{

		Context: ctx,
	}
}

// NewAdminGetBulkUserBanV3ParamsWithHTTPClient creates a new AdminGetBulkUserBanV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetBulkUserBanV3ParamsWithHTTPClient(client *http.Client) *AdminGetBulkUserBanV3Params {
	var ()
	return &AdminGetBulkUserBanV3Params{
		HTTPClient: client,
	}
}

/*AdminGetBulkUserBanV3Params contains all the parameters to send to the API endpoint
for the admin get bulk user ban v3 operation typically these are written to a http.Request
*/
type AdminGetBulkUserBanV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelGetBulkUserBansRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*ActiveOnly
	  Filter ban based on the ban status. If you set this, only active ban returned

	*/
	ActiveOnly *bool
	/*BanType
	  Filter ban based on the ban type. You can see list of ban from GET /iam/v3/admin/bans

	*/
	BanType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithTimeout(timeout time.Duration) *AdminGetBulkUserBanV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithContext(ctx context.Context) *AdminGetBulkUserBanV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithHTTPClient(client *http.Client) *AdminGetBulkUserBanV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithBody(body *iamclientmodels.ModelGetBulkUserBansRequest) *AdminGetBulkUserBanV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetBody(body *iamclientmodels.ModelGetBulkUserBansRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithNamespace(namespace string) *AdminGetBulkUserBanV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithActiveOnly(activeOnly *bool) *AdminGetBulkUserBanV3Params {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithBanType adds the banType to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) WithBanType(banType *string) *AdminGetBulkUserBanV3Params {
	o.SetBanType(banType)
	return o
}

// SetBanType adds the banType to the admin get bulk user ban v3 params
func (o *AdminGetBulkUserBanV3Params) SetBanType(banType *string) {
	o.BanType = banType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetBulkUserBanV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.BanType != nil {

		// query param banType
		var qrBanType string
		if o.BanType != nil {
			qrBanType = *o.BanType
		}
		qBanType := qrBanType
		if qBanType != "" {
			if err := r.SetQueryParam("banType", qBanType); err != nil {
				return err
			}
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
