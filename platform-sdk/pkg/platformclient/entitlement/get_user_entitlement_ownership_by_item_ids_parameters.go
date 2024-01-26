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

// NewGetUserEntitlementOwnershipByItemIdsParams creates a new GetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized.
func NewGetUserEntitlementOwnershipByItemIdsParams() *GetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementOwnershipByItemIdsParamsWithTimeout creates a new GetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementOwnershipByItemIdsParamsWithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIdsParams{

		timeout: timeout,
	}
}

// NewGetUserEntitlementOwnershipByItemIdsParamsWithContext creates a new GetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementOwnershipByItemIdsParamsWithContext(ctx context.Context) *GetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIdsParams{

		Context: ctx,
	}
}

// NewGetUserEntitlementOwnershipByItemIdsParamsWithHTTPClient creates a new GetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementOwnershipByItemIdsParamsWithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIdsParams{
		HTTPClient: client,
	}
}

/*GetUserEntitlementOwnershipByItemIdsParams contains all the parameters to send to the API endpoint
for the get user entitlement ownership by item ids operation typically these are written to a http.Request
*/
type GetUserEntitlementOwnershipByItemIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Ids*/
	Ids []string
	/*Platform*/
	Platform *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithContext(ctx context.Context) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithNamespace(namespace string) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithUserID(userID string) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithIds adds the ids to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithIds(ids []string) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetIds(ids)
	return o
}

// SetIds adds the ids to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetIds(ids []string) {
	o.Ids = ids
}

// WithPlatform adds the platform to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) WithPlatform(platform *string) *GetUserEntitlementOwnershipByItemIdsParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get user entitlement ownership by item ids params
func (o *GetUserEntitlementOwnershipByItemIdsParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementOwnershipByItemIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	valuesIds := o.Ids

	joinedIds := swag.JoinByFormat(valuesIds, "multi")
	// query array param ids
	if err := r.SetQueryParam("ids", joinedIds...); err != nil {
		return err
	}

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
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
