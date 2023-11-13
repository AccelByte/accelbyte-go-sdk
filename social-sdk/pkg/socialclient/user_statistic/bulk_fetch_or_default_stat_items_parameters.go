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
	"github.com/go-openapi/swag"
)

// NewBulkFetchOrDefaultStatItemsParams creates a new BulkFetchOrDefaultStatItemsParams object
// with the default values initialized.
func NewBulkFetchOrDefaultStatItemsParams() *BulkFetchOrDefaultStatItemsParams {
	var ()
	return &BulkFetchOrDefaultStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkFetchOrDefaultStatItemsParamsWithTimeout creates a new BulkFetchOrDefaultStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkFetchOrDefaultStatItemsParamsWithTimeout(timeout time.Duration) *BulkFetchOrDefaultStatItemsParams {
	var ()
	return &BulkFetchOrDefaultStatItemsParams{

		timeout: timeout,
	}
}

// NewBulkFetchOrDefaultStatItemsParamsWithContext creates a new BulkFetchOrDefaultStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkFetchOrDefaultStatItemsParamsWithContext(ctx context.Context) *BulkFetchOrDefaultStatItemsParams {
	var ()
	return &BulkFetchOrDefaultStatItemsParams{

		Context: ctx,
	}
}

// NewBulkFetchOrDefaultStatItemsParamsWithHTTPClient creates a new BulkFetchOrDefaultStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkFetchOrDefaultStatItemsParamsWithHTTPClient(client *http.Client) *BulkFetchOrDefaultStatItemsParams {
	var ()
	return &BulkFetchOrDefaultStatItemsParams{
		HTTPClient: client,
	}
}

/*BulkFetchOrDefaultStatItemsParams contains all the parameters to send to the API endpoint
for the bulk fetch or default stat items operation typically these are written to a http.Request
*/
type BulkFetchOrDefaultStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserIds
	  user ids

	*/
	UserIds []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithTimeout(timeout time.Duration) *BulkFetchOrDefaultStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithContext(ctx context.Context) *BulkFetchOrDefaultStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithHTTPClient(client *http.Client) *BulkFetchOrDefaultStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithNamespace(namespace string) *BulkFetchOrDefaultStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithStatCode(statCode string) *BulkFetchOrDefaultStatItemsParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserIds adds the userIds to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) WithUserIds(userIds []string) *BulkFetchOrDefaultStatItemsParams {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the bulk fetch or default stat items params
func (o *BulkFetchOrDefaultStatItemsParams) SetUserIds(userIds []string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *BulkFetchOrDefaultStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param statCode
	qrStatCode := o.StatCode
	qStatCode := qrStatCode
	if qStatCode != "" {
		if err := r.SetQueryParam("statCode", qStatCode); err != nil {
			return err
		}
	}

	valuesUserIds := o.UserIds

	joinedUserIds := swag.JoinByFormat(valuesUserIds, "multi")
	// query array param userIds
	if err := r.SetQueryParam("userIds", joinedUserIds...); err != nil {
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
