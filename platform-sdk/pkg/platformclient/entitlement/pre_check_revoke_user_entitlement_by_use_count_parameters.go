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

// NewPreCheckRevokeUserEntitlementByUseCountParams creates a new PreCheckRevokeUserEntitlementByUseCountParams object
// with the default values initialized.
func NewPreCheckRevokeUserEntitlementByUseCountParams() *PreCheckRevokeUserEntitlementByUseCountParams {
	var ()
	return &PreCheckRevokeUserEntitlementByUseCountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPreCheckRevokeUserEntitlementByUseCountParamsWithTimeout creates a new PreCheckRevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPreCheckRevokeUserEntitlementByUseCountParamsWithTimeout(timeout time.Duration) *PreCheckRevokeUserEntitlementByUseCountParams {
	var ()
	return &PreCheckRevokeUserEntitlementByUseCountParams{

		timeout: timeout,
	}
}

// NewPreCheckRevokeUserEntitlementByUseCountParamsWithContext creates a new PreCheckRevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a context for a request
func NewPreCheckRevokeUserEntitlementByUseCountParamsWithContext(ctx context.Context) *PreCheckRevokeUserEntitlementByUseCountParams {
	var ()
	return &PreCheckRevokeUserEntitlementByUseCountParams{

		Context: ctx,
	}
}

// NewPreCheckRevokeUserEntitlementByUseCountParamsWithHTTPClient creates a new PreCheckRevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPreCheckRevokeUserEntitlementByUseCountParamsWithHTTPClient(client *http.Client) *PreCheckRevokeUserEntitlementByUseCountParams {
	var ()
	return &PreCheckRevokeUserEntitlementByUseCountParams{
		HTTPClient: client,
	}
}

/*PreCheckRevokeUserEntitlementByUseCountParams contains all the parameters to send to the API endpoint
for the pre check revoke user entitlement by use count operation typically these are written to a http.Request
*/
type PreCheckRevokeUserEntitlementByUseCountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EntitlementID*/
	EntitlementID string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*Quantity*/
	Quantity int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithTimeout(timeout time.Duration) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithContext(ctx context.Context) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithHTTPClient(client *http.Client) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEntitlementID adds the entitlementID to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithEntitlementID(entitlementID string) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithNamespace(namespace string) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithUserID(userID string) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithQuantity adds the quantity to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WithQuantity(quantity int32) *PreCheckRevokeUserEntitlementByUseCountParams {
	o.SetQuantity(quantity)
	return o
}

// SetQuantity adds the quantity to the pre check revoke user entitlement by use count params
func (o *PreCheckRevokeUserEntitlementByUseCountParams) SetQuantity(quantity int32) {
	o.Quantity = quantity
}

// WriteToRequest writes these params to a swagger request
func (o *PreCheckRevokeUserEntitlementByUseCountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param entitlementId
	if err := r.SetPathParam("entitlementId", o.EntitlementID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// query param quantity
	qrQuantity := o.Quantity
	qQuantity := swag.FormatInt32(qrQuantity)
	if qQuantity != "" {
		if err := r.SetQueryParam("quantity", qQuantity); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
