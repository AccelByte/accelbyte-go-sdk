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

// Get the enum in PublicGetUserEntitlementBySkuParams
const (
	PublicGetUserEntitlementBySkuAPPConstant          = "APP"
	PublicGetUserEntitlementBySkuCODEConstant         = "CODE"
	PublicGetUserEntitlementBySkuENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetUserEntitlementBySkuLOOTBOXConstant      = "LOOTBOX"
	PublicGetUserEntitlementBySkuMEDIAConstant        = "MEDIA"
	PublicGetUserEntitlementBySkuOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetUserEntitlementBySkuSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicGetUserEntitlementBySkuParams creates a new PublicGetUserEntitlementBySkuParams object
// with the default values initialized.
func NewPublicGetUserEntitlementBySkuParams() *PublicGetUserEntitlementBySkuParams {
	var ()
	return &PublicGetUserEntitlementBySkuParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserEntitlementBySkuParamsWithTimeout creates a new PublicGetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserEntitlementBySkuParamsWithTimeout(timeout time.Duration) *PublicGetUserEntitlementBySkuParams {
	var ()
	return &PublicGetUserEntitlementBySkuParams{

		timeout: timeout,
	}
}

// NewPublicGetUserEntitlementBySkuParamsWithContext creates a new PublicGetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserEntitlementBySkuParamsWithContext(ctx context.Context) *PublicGetUserEntitlementBySkuParams {
	var ()
	return &PublicGetUserEntitlementBySkuParams{

		Context: ctx,
	}
}

// NewPublicGetUserEntitlementBySkuParamsWithHTTPClient creates a new PublicGetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserEntitlementBySkuParamsWithHTTPClient(client *http.Client) *PublicGetUserEntitlementBySkuParams {
	var ()
	return &PublicGetUserEntitlementBySkuParams{
		HTTPClient: client,
	}
}

/*PublicGetUserEntitlementBySkuParams contains all the parameters to send to the API endpoint
for the public get user entitlement by sku operation typically these are written to a http.Request
*/
type PublicGetUserEntitlementBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithTimeout(timeout time.Duration) *PublicGetUserEntitlementBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithContext(ctx context.Context) *PublicGetUserEntitlementBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithHTTPClient(client *http.Client) *PublicGetUserEntitlementBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserEntitlementBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithNamespace(namespace string) *PublicGetUserEntitlementBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithUserID(userID string) *PublicGetUserEntitlementBySkuParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEntitlementClazz adds the entitlementClazz to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithEntitlementClazz(entitlementClazz *string) *PublicGetUserEntitlementBySkuParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithSku adds the sku to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) WithSku(sku string) *PublicGetUserEntitlementBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the public get user entitlement by sku params
func (o *PublicGetUserEntitlementBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserEntitlementBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
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
