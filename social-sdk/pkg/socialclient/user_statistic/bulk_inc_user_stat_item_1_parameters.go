// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkIncUserStatItem1Params creates a new BulkIncUserStatItem1Params object
// with the default values initialized.
func NewBulkIncUserStatItem1Params() *BulkIncUserStatItem1Params {
	var ()
	return &BulkIncUserStatItem1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkIncUserStatItem1ParamsWithTimeout creates a new BulkIncUserStatItem1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkIncUserStatItem1ParamsWithTimeout(timeout time.Duration) *BulkIncUserStatItem1Params {
	var ()
	return &BulkIncUserStatItem1Params{

		timeout: timeout,
	}
}

// NewBulkIncUserStatItem1ParamsWithContext creates a new BulkIncUserStatItem1Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkIncUserStatItem1ParamsWithContext(ctx context.Context) *BulkIncUserStatItem1Params {
	var ()
	return &BulkIncUserStatItem1Params{

		Context: ctx,
	}
}

// NewBulkIncUserStatItem1ParamsWithHTTPClient creates a new BulkIncUserStatItem1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkIncUserStatItem1ParamsWithHTTPClient(client *http.Client) *BulkIncUserStatItem1Params {
	var ()
	return &BulkIncUserStatItem1Params{
		HTTPClient: client,
	}
}

/*BulkIncUserStatItem1Params contains all the parameters to send to the API endpoint
for the bulk inc user stat item 1 operation typically these are written to a http.Request
*/
type BulkIncUserStatItem1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkStatItemInc
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithTimeout(timeout time.Duration) *BulkIncUserStatItem1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithContext(ctx context.Context) *BulkIncUserStatItem1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithHTTPClient(client *http.Client) *BulkIncUserStatItem1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithBody(body []*socialclientmodels.BulkStatItemInc) *BulkIncUserStatItem1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetBody(body []*socialclientmodels.BulkStatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithNamespace(namespace string) *BulkIncUserStatItem1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) WithUserID(userID string) *BulkIncUserStatItem1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk inc user stat item 1 params
func (o *BulkIncUserStatItem1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *BulkIncUserStatItem1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
