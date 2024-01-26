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

// NewPublicGetUserEntitlementOwnershipByItemIdsParams creates a new PublicGetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized.
func NewPublicGetUserEntitlementOwnershipByItemIdsParams() *PublicGetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &PublicGetUserEntitlementOwnershipByItemIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithTimeout creates a new PublicGetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithTimeout(timeout time.Duration) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &PublicGetUserEntitlementOwnershipByItemIdsParams{

		timeout: timeout,
	}
}

// NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithContext creates a new PublicGetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithContext(ctx context.Context) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &PublicGetUserEntitlementOwnershipByItemIdsParams{

		Context: ctx,
	}
}

// NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithHTTPClient creates a new PublicGetUserEntitlementOwnershipByItemIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserEntitlementOwnershipByItemIdsParamsWithHTTPClient(client *http.Client) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	var ()
	return &PublicGetUserEntitlementOwnershipByItemIdsParams{
		HTTPClient: client,
	}
}

/*PublicGetUserEntitlementOwnershipByItemIdsParams contains all the parameters to send to the API endpoint
for the public get user entitlement ownership by item ids operation typically these are written to a http.Request
*/
type PublicGetUserEntitlementOwnershipByItemIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Ids*/
	Ids []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithTimeout(timeout time.Duration) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithContext(ctx context.Context) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithHTTPClient(client *http.Client) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithNamespace(namespace string) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithUserID(userID string) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithIds adds the ids to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WithIds(ids []string) *PublicGetUserEntitlementOwnershipByItemIdsParams {
	o.SetIds(ids)
	return o
}

// SetIds adds the ids to the public get user entitlement ownership by item ids params
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) SetIds(ids []string) {
	o.Ids = ids
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserEntitlementOwnershipByItemIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
