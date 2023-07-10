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

// NewBulkIncUserStatItemValue2Params creates a new BulkIncUserStatItemValue2Params object
// with the default values initialized.
func NewBulkIncUserStatItemValue2Params() *BulkIncUserStatItemValue2Params {
	var ()
	return &BulkIncUserStatItemValue2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkIncUserStatItemValue2ParamsWithTimeout creates a new BulkIncUserStatItemValue2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkIncUserStatItemValue2ParamsWithTimeout(timeout time.Duration) *BulkIncUserStatItemValue2Params {
	var ()
	return &BulkIncUserStatItemValue2Params{

		timeout: timeout,
	}
}

// NewBulkIncUserStatItemValue2ParamsWithContext creates a new BulkIncUserStatItemValue2Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkIncUserStatItemValue2ParamsWithContext(ctx context.Context) *BulkIncUserStatItemValue2Params {
	var ()
	return &BulkIncUserStatItemValue2Params{

		Context: ctx,
	}
}

// NewBulkIncUserStatItemValue2ParamsWithHTTPClient creates a new BulkIncUserStatItemValue2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkIncUserStatItemValue2ParamsWithHTTPClient(client *http.Client) *BulkIncUserStatItemValue2Params {
	var ()
	return &BulkIncUserStatItemValue2Params{
		HTTPClient: client,
	}
}

/*BulkIncUserStatItemValue2Params contains all the parameters to send to the API endpoint
for the bulk inc user stat item value 2 operation typically these are written to a http.Request
*/
type BulkIncUserStatItemValue2Params struct {

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

// WithTimeout adds the timeout to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithTimeout(timeout time.Duration) *BulkIncUserStatItemValue2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithContext(ctx context.Context) *BulkIncUserStatItemValue2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithHTTPClient(client *http.Client) *BulkIncUserStatItemValue2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithBody(body []*socialclientmodels.BulkStatItemInc) *BulkIncUserStatItemValue2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetBody(body []*socialclientmodels.BulkStatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithNamespace(namespace string) *BulkIncUserStatItemValue2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) WithUserID(userID string) *BulkIncUserStatItemValue2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk inc user stat item value 2 params
func (o *BulkIncUserStatItemValue2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *BulkIncUserStatItemValue2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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