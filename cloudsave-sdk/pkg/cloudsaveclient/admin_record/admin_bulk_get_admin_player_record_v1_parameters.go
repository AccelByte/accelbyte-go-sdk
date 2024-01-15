// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminBulkGetAdminPlayerRecordV1Params creates a new AdminBulkGetAdminPlayerRecordV1Params object
// with the default values initialized.
func NewAdminBulkGetAdminPlayerRecordV1Params() *AdminBulkGetAdminPlayerRecordV1Params {
	var ()
	return &AdminBulkGetAdminPlayerRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkGetAdminPlayerRecordV1ParamsWithTimeout creates a new AdminBulkGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkGetAdminPlayerRecordV1ParamsWithTimeout(timeout time.Duration) *AdminBulkGetAdminPlayerRecordV1Params {
	var ()
	return &AdminBulkGetAdminPlayerRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminBulkGetAdminPlayerRecordV1ParamsWithContext creates a new AdminBulkGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkGetAdminPlayerRecordV1ParamsWithContext(ctx context.Context) *AdminBulkGetAdminPlayerRecordV1Params {
	var ()
	return &AdminBulkGetAdminPlayerRecordV1Params{

		Context: ctx,
	}
}

// NewAdminBulkGetAdminPlayerRecordV1ParamsWithHTTPClient creates a new AdminBulkGetAdminPlayerRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkGetAdminPlayerRecordV1ParamsWithHTTPClient(client *http.Client) *AdminBulkGetAdminPlayerRecordV1Params {
	var ()
	return &AdminBulkGetAdminPlayerRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminBulkGetAdminPlayerRecordV1Params contains all the parameters to send to the API endpoint
for the admin bulk get admin player record v1 operation typically these are written to a http.Request
*/
type AdminBulkGetAdminPlayerRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithTimeout(timeout time.Duration) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithContext(ctx context.Context) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithHTTPClient(client *http.Client) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordRequest) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsBulkGetAdminPlayerRecordRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithNamespace(namespace string) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) WithUserID(userID string) *AdminBulkGetAdminPlayerRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin bulk get admin player record v1 params
func (o *AdminBulkGetAdminPlayerRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkGetAdminPlayerRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
