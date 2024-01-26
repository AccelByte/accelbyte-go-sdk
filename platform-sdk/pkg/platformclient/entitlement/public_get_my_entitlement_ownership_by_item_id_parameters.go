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
)

// Get the enum in PublicGetMyEntitlementOwnershipByItemIDParams
const (
	PublicGetMyEntitlementOwnershipByItemIDAPPConstant          = "APP"
	PublicGetMyEntitlementOwnershipByItemIDCODEConstant         = "CODE"
	PublicGetMyEntitlementOwnershipByItemIDENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetMyEntitlementOwnershipByItemIDLOOTBOXConstant      = "LOOTBOX"
	PublicGetMyEntitlementOwnershipByItemIDMEDIAConstant        = "MEDIA"
	PublicGetMyEntitlementOwnershipByItemIDOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetMyEntitlementOwnershipByItemIDSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicGetMyEntitlementOwnershipByItemIDParams creates a new PublicGetMyEntitlementOwnershipByItemIDParams object
// with the default values initialized.
func NewPublicGetMyEntitlementOwnershipByItemIDParams() *PublicGetMyEntitlementOwnershipByItemIDParams {
	var ()
	return &PublicGetMyEntitlementOwnershipByItemIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyEntitlementOwnershipByItemIDParamsWithTimeout creates a new PublicGetMyEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyEntitlementOwnershipByItemIDParamsWithTimeout(timeout time.Duration) *PublicGetMyEntitlementOwnershipByItemIDParams {
	var ()
	return &PublicGetMyEntitlementOwnershipByItemIDParams{

		timeout: timeout,
	}
}

// NewPublicGetMyEntitlementOwnershipByItemIDParamsWithContext creates a new PublicGetMyEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyEntitlementOwnershipByItemIDParamsWithContext(ctx context.Context) *PublicGetMyEntitlementOwnershipByItemIDParams {
	var ()
	return &PublicGetMyEntitlementOwnershipByItemIDParams{

		Context: ctx,
	}
}

// NewPublicGetMyEntitlementOwnershipByItemIDParamsWithHTTPClient creates a new PublicGetMyEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyEntitlementOwnershipByItemIDParamsWithHTTPClient(client *http.Client) *PublicGetMyEntitlementOwnershipByItemIDParams {
	var ()
	return &PublicGetMyEntitlementOwnershipByItemIDParams{
		HTTPClient: client,
	}
}

/*PublicGetMyEntitlementOwnershipByItemIDParams contains all the parameters to send to the API endpoint
for the public get my entitlement ownership by item id operation typically these are written to a http.Request
*/
type PublicGetMyEntitlementOwnershipByItemIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithTimeout(timeout time.Duration) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithContext(ctx context.Context) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithHTTPClient(client *http.Client) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithNamespace(namespace string) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEntitlementClazz adds the entitlementClazz to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithEntitlementClazz(entitlementClazz *string) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithItemID adds the itemID to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WithItemID(itemID string) *PublicGetMyEntitlementOwnershipByItemIDParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public get my entitlement ownership by item id params
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyEntitlementOwnershipByItemIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
			return err
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
