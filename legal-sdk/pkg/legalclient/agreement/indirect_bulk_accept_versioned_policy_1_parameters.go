// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewIndirectBulkAcceptVersionedPolicy1Params creates a new IndirectBulkAcceptVersionedPolicy1Params object
// with the default values initialized.
func NewIndirectBulkAcceptVersionedPolicy1Params() *IndirectBulkAcceptVersionedPolicy1Params {
	var ()
	return &IndirectBulkAcceptVersionedPolicy1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewIndirectBulkAcceptVersionedPolicy1ParamsWithTimeout creates a new IndirectBulkAcceptVersionedPolicy1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewIndirectBulkAcceptVersionedPolicy1ParamsWithTimeout(timeout time.Duration) *IndirectBulkAcceptVersionedPolicy1Params {
	var ()
	return &IndirectBulkAcceptVersionedPolicy1Params{

		timeout: timeout,
	}
}

// NewIndirectBulkAcceptVersionedPolicy1ParamsWithContext creates a new IndirectBulkAcceptVersionedPolicy1Params object
// with the default values initialized, and the ability to set a context for a request
func NewIndirectBulkAcceptVersionedPolicy1ParamsWithContext(ctx context.Context) *IndirectBulkAcceptVersionedPolicy1Params {
	var ()
	return &IndirectBulkAcceptVersionedPolicy1Params{

		Context: ctx,
	}
}

// NewIndirectBulkAcceptVersionedPolicy1ParamsWithHTTPClient creates a new IndirectBulkAcceptVersionedPolicy1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewIndirectBulkAcceptVersionedPolicy1ParamsWithHTTPClient(client *http.Client) *IndirectBulkAcceptVersionedPolicy1Params {
	var ()
	return &IndirectBulkAcceptVersionedPolicy1Params{
		HTTPClient: client,
	}
}

/*IndirectBulkAcceptVersionedPolicy1Params contains all the parameters to send to the API endpoint
for the indirect bulk accept versioned policy 1 operation typically these are written to a http.Request
*/
type IndirectBulkAcceptVersionedPolicy1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) WithTimeout(timeout time.Duration) *IndirectBulkAcceptVersionedPolicy1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) WithContext(ctx context.Context) *IndirectBulkAcceptVersionedPolicy1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) WithHTTPClient(client *http.Client) *IndirectBulkAcceptVersionedPolicy1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *IndirectBulkAcceptVersionedPolicy1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WithUserID adds the userID to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) WithUserID(userID string) *IndirectBulkAcceptVersionedPolicy1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the indirect bulk accept versioned policy 1 params
func (o *IndirectBulkAcceptVersionedPolicy1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *IndirectBulkAcceptVersionedPolicy1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
