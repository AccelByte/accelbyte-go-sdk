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

// NewPublicExistsAnyMyActiveEntitlementParams creates a new PublicExistsAnyMyActiveEntitlementParams object
// with the default values initialized.
func NewPublicExistsAnyMyActiveEntitlementParams() *PublicExistsAnyMyActiveEntitlementParams {
	var ()
	return &PublicExistsAnyMyActiveEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicExistsAnyMyActiveEntitlementParamsWithTimeout creates a new PublicExistsAnyMyActiveEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicExistsAnyMyActiveEntitlementParamsWithTimeout(timeout time.Duration) *PublicExistsAnyMyActiveEntitlementParams {
	var ()
	return &PublicExistsAnyMyActiveEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicExistsAnyMyActiveEntitlementParamsWithContext creates a new PublicExistsAnyMyActiveEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicExistsAnyMyActiveEntitlementParamsWithContext(ctx context.Context) *PublicExistsAnyMyActiveEntitlementParams {
	var ()
	return &PublicExistsAnyMyActiveEntitlementParams{

		Context: ctx,
	}
}

// NewPublicExistsAnyMyActiveEntitlementParamsWithHTTPClient creates a new PublicExistsAnyMyActiveEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicExistsAnyMyActiveEntitlementParamsWithHTTPClient(client *http.Client) *PublicExistsAnyMyActiveEntitlementParams {
	var ()
	return &PublicExistsAnyMyActiveEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicExistsAnyMyActiveEntitlementParams contains all the parameters to send to the API endpoint
for the public exists any my active entitlement operation typically these are written to a http.Request
*/
type PublicExistsAnyMyActiveEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*AppIds*/
	AppIds []string
	/*ItemIds*/
	ItemIds []string
	/*Skus*/
	Skus []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithTimeout(timeout time.Duration) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithContext(ctx context.Context) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithHTTPClient(client *http.Client) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithNamespace(namespace string) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAppIds adds the appIds to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithAppIds(appIds []string) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetAppIds(appIds)
	return o
}

// SetAppIds adds the appIds to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetAppIds(appIds []string) {
	o.AppIds = appIds
}

// WithItemIds adds the itemIds to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithItemIds(itemIds []string) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetItemIds(itemIds []string) {
	o.ItemIds = itemIds
}

// WithSkus adds the skus to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) WithSkus(skus []string) *PublicExistsAnyMyActiveEntitlementParams {
	o.SetSkus(skus)
	return o
}

// SetSkus adds the skus to the public exists any my active entitlement params
func (o *PublicExistsAnyMyActiveEntitlementParams) SetSkus(skus []string) {
	o.Skus = skus
}

// WriteToRequest writes these params to a swagger request
func (o *PublicExistsAnyMyActiveEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesAppIds := o.AppIds

	joinedAppIds := swag.JoinByFormat(valuesAppIds, "csv")
	// query array param appIds
	if err := r.SetQueryParam("appIds", joinedAppIds...); err != nil {
		return err
	}

	valuesItemIds := o.ItemIds

	joinedItemIds := swag.JoinByFormat(valuesItemIds, "csv")
	// query array param itemIds
	if err := r.SetQueryParam("itemIds", joinedItemIds...); err != nil {
		return err
	}

	valuesSkus := o.Skus

	joinedSkus := swag.JoinByFormat(valuesSkus, "csv")
	// query array param skus
	if err := r.SetQueryParam("skus", joinedSkus...); err != nil {
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
