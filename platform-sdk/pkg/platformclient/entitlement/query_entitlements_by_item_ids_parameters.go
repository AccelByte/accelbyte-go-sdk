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

// NewQueryEntitlementsByItemIdsParams creates a new QueryEntitlementsByItemIdsParams object
// with the default values initialized.
func NewQueryEntitlementsByItemIdsParams() *QueryEntitlementsByItemIdsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsByItemIdsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryEntitlementsByItemIdsParamsWithTimeout creates a new QueryEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryEntitlementsByItemIdsParamsWithTimeout(timeout time.Duration) *QueryEntitlementsByItemIdsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsByItemIdsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryEntitlementsByItemIdsParamsWithContext creates a new QueryEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryEntitlementsByItemIdsParamsWithContext(ctx context.Context) *QueryEntitlementsByItemIdsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsByItemIdsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryEntitlementsByItemIdsParamsWithHTTPClient creates a new QueryEntitlementsByItemIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryEntitlementsByItemIdsParamsWithHTTPClient(client *http.Client) *QueryEntitlementsByItemIdsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsByItemIdsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryEntitlementsByItemIdsParams contains all the parameters to send to the API endpoint
for the query entitlements by item ids operation typically these are written to a http.Request
*/
type QueryEntitlementsByItemIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*ItemIds*/
	ItemIds []string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithTimeout(timeout time.Duration) *QueryEntitlementsByItemIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithContext(ctx context.Context) *QueryEntitlementsByItemIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithHTTPClient(client *http.Client) *QueryEntitlementsByItemIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryEntitlementsByItemIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithNamespace(namespace string) *QueryEntitlementsByItemIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithActiveOnly(activeOnly *bool) *QueryEntitlementsByItemIdsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithItemIds adds the itemIds to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithItemIds(itemIds []string) *QueryEntitlementsByItemIdsParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WithLimit adds the limit to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithLimit(limit *int32) *QueryEntitlementsByItemIdsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) WithOffset(offset *int32) *QueryEntitlementsByItemIdsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query entitlements by item ids params
func (o *QueryEntitlementsByItemIdsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *QueryEntitlementsByItemIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	joinedItemIds := swag.JoinByFormat(valuesItemIds, "multi")
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
