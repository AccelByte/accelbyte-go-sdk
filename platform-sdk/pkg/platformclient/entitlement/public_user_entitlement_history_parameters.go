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

// Deprecated: 2025-07-16 - Use PublicUserEntitlementHistoryEntitlementClazz<EnumValue>Constant instead.
// Get the enum in PublicUserEntitlementHistoryParams
const (
	PublicUserEntitlementHistoryAPPConstant          = "APP"
	PublicUserEntitlementHistoryCODEConstant         = "CODE"
	PublicUserEntitlementHistoryENTITLEMENTConstant  = "ENTITLEMENT"
	PublicUserEntitlementHistoryLOOTBOXConstant      = "LOOTBOX"
	PublicUserEntitlementHistoryMEDIAConstant        = "MEDIA"
	PublicUserEntitlementHistoryOPTIONBOXConstant    = "OPTIONBOX"
	PublicUserEntitlementHistorySUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in PublicUserEntitlementHistoryParams
const (
	PublicUserEntitlementHistoryEntitlementClazzAPPConstant          = "APP"
	PublicUserEntitlementHistoryEntitlementClazzCODEConstant         = "CODE"
	PublicUserEntitlementHistoryEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	PublicUserEntitlementHistoryEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	PublicUserEntitlementHistoryEntitlementClazzMEDIAConstant        = "MEDIA"
	PublicUserEntitlementHistoryEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	PublicUserEntitlementHistoryEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicUserEntitlementHistoryParams creates a new PublicUserEntitlementHistoryParams object
// with the default values initialized.
func NewPublicUserEntitlementHistoryParams() *PublicUserEntitlementHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicUserEntitlementHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUserEntitlementHistoryParamsWithTimeout creates a new PublicUserEntitlementHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUserEntitlementHistoryParamsWithTimeout(timeout time.Duration) *PublicUserEntitlementHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicUserEntitlementHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicUserEntitlementHistoryParamsWithContext creates a new PublicUserEntitlementHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUserEntitlementHistoryParamsWithContext(ctx context.Context) *PublicUserEntitlementHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicUserEntitlementHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicUserEntitlementHistoryParamsWithHTTPClient creates a new PublicUserEntitlementHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUserEntitlementHistoryParamsWithHTTPClient(client *http.Client) *PublicUserEntitlementHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicUserEntitlementHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicUserEntitlementHistoryParams contains all the parameters to send to the API endpoint
for the public user entitlement history operation typically these are written to a http.Request
*/
type PublicUserEntitlementHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EndDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z

	*/
	EndDate *string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*StartDate
	  allowed format: \d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z

	*/
	StartDate *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithTimeout(timeout time.Duration) *PublicUserEntitlementHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithContext(ctx context.Context) *PublicUserEntitlementHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithHTTPClient(client *http.Client) *PublicUserEntitlementHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUserEntitlementHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithNamespace(namespace string) *PublicUserEntitlementHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithUserID(userID string) *PublicUserEntitlementHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndDate adds the endDate to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithEndDate(endDate *string) *PublicUserEntitlementHistoryParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithEntitlementClazz adds the entitlementClazz to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithEntitlementClazz(entitlementClazz *string) *PublicUserEntitlementHistoryParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithLimit adds the limit to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithLimit(limit *int32) *PublicUserEntitlementHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithOffset(offset *int32) *PublicUserEntitlementHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStartDate adds the startDate to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) WithStartDate(startDate *string) *PublicUserEntitlementHistoryParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the public user entitlement history params
func (o *PublicUserEntitlementHistoryParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUserEntitlementHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.EntitlementClazz != nil {

		// query param entitlementClazz
		var qrEntitlementClazz string
		if o.EntitlementClazz != nil {
			qrEntitlementClazz = *o.EntitlementClazz
		}
		qEntitlementClazz := qrEntitlementClazz
		if qEntitlementClazz != "" {
			if err := r.SetQueryParam("entitlementClazz", qEntitlementClazz); err != nil {
				return err
			}
		}

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

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
