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

// NewBulkFetchOrDefaultStatItems1Params creates a new BulkFetchOrDefaultStatItems1Params object
// with the default values initialized.
func NewBulkFetchOrDefaultStatItems1Params() *BulkFetchOrDefaultStatItems1Params {
	var ()
	return &BulkFetchOrDefaultStatItems1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkFetchOrDefaultStatItems1ParamsWithTimeout creates a new BulkFetchOrDefaultStatItems1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkFetchOrDefaultStatItems1ParamsWithTimeout(timeout time.Duration) *BulkFetchOrDefaultStatItems1Params {
	var ()
	return &BulkFetchOrDefaultStatItems1Params{

		timeout: timeout,
	}
}

// NewBulkFetchOrDefaultStatItems1ParamsWithContext creates a new BulkFetchOrDefaultStatItems1Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkFetchOrDefaultStatItems1ParamsWithContext(ctx context.Context) *BulkFetchOrDefaultStatItems1Params {
	var ()
	return &BulkFetchOrDefaultStatItems1Params{

		Context: ctx,
	}
}

// NewBulkFetchOrDefaultStatItems1ParamsWithHTTPClient creates a new BulkFetchOrDefaultStatItems1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkFetchOrDefaultStatItems1ParamsWithHTTPClient(client *http.Client) *BulkFetchOrDefaultStatItems1Params {
	var ()
	return &BulkFetchOrDefaultStatItems1Params{
		HTTPClient: client,
	}
}

/*BulkFetchOrDefaultStatItems1Params contains all the parameters to send to the API endpoint
for the bulk fetch or default stat items 1 operation typically these are written to a http.Request
*/
type BulkFetchOrDefaultStatItems1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithTimeout(timeout time.Duration) *BulkFetchOrDefaultStatItems1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithContext(ctx context.Context) *BulkFetchOrDefaultStatItems1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithHTTPClient(client *http.Client) *BulkFetchOrDefaultStatItems1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkFetchOrDefaultStatItems1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithNamespace(namespace string) *BulkFetchOrDefaultStatItems1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAdditionalKey adds the additionalKey to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithAdditionalKey(additionalKey *string) *BulkFetchOrDefaultStatItems1Params {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WithStatCode adds the statCode to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithStatCode(statCode string) *BulkFetchOrDefaultStatItems1Params {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserIds adds the userIds to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) WithUserIds(userIds []string) *BulkFetchOrDefaultStatItems1Params {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the bulk fetch or default stat items 1 params
func (o *BulkFetchOrDefaultStatItems1Params) SetUserIds(userIds []string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *BulkFetchOrDefaultStatItems1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
