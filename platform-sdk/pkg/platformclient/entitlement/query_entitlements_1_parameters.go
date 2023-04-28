// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// NewQueryEntitlements1Params creates a new QueryEntitlements1Params object
// with the default values initialized.
func NewQueryEntitlements1Params() *QueryEntitlements1Params {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlements1Params{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryEntitlements1ParamsWithTimeout creates a new QueryEntitlements1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryEntitlements1ParamsWithTimeout(timeout time.Duration) *QueryEntitlements1Params {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlements1Params{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryEntitlements1ParamsWithContext creates a new QueryEntitlements1Params object
// with the default values initialized, and the ability to set a context for a request
func NewQueryEntitlements1ParamsWithContext(ctx context.Context) *QueryEntitlements1Params {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlements1Params{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryEntitlements1ParamsWithHTTPClient creates a new QueryEntitlements1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryEntitlements1ParamsWithHTTPClient(client *http.Client) *QueryEntitlements1Params {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlements1Params{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryEntitlements1Params contains all the parameters to send to the API endpoint
for the query entitlements 1 operation typically these are written to a http.Request
*/
type QueryEntitlements1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*ItemIds*/
	ItemIds []string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithTimeout(timeout time.Duration) *QueryEntitlements1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithContext(ctx context.Context) *QueryEntitlements1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithHTTPClient(client *http.Client) *QueryEntitlements1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithNamespace(namespace string) *QueryEntitlements1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithActiveOnly(activeOnly *bool) *QueryEntitlements1Params {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithItemIds adds the itemIds to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithItemIds(itemIds []string) *QueryEntitlements1Params {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WithLimit adds the limit to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithLimit(limit *int32) *QueryEntitlements1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query entitlements 1 params
func (o *QueryEntitlements1Params) WithOffset(offset *int32) *QueryEntitlements1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query entitlements 1 params
func (o *QueryEntitlements1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *QueryEntitlements1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	valuesItemIds := o.ItemIds

	joinedItemIds := swag.JoinByFormat(valuesItemIds, "csv")
	// query array param itemIds
	if err := r.SetQueryParam("itemIds", joinedItemIds...); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
