// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// NewPublicGetAppParams creates a new PublicGetAppParams object
// with the default values initialized.
func NewPublicGetAppParams() *PublicGetAppParams {
	var ()
	return &PublicGetAppParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetAppParamsWithTimeout creates a new PublicGetAppParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetAppParamsWithTimeout(timeout time.Duration) *PublicGetAppParams {
	var ()
	return &PublicGetAppParams{

		timeout: timeout,
	}
}

// NewPublicGetAppParamsWithContext creates a new PublicGetAppParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetAppParamsWithContext(ctx context.Context) *PublicGetAppParams {
	var ()
	return &PublicGetAppParams{

		Context: ctx,
	}
}

// NewPublicGetAppParamsWithHTTPClient creates a new PublicGetAppParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetAppParamsWithHTTPClient(client *http.Client) *PublicGetAppParams {
	var ()
	return &PublicGetAppParams{
		HTTPClient: client,
	}
}

/*PublicGetAppParams contains all the parameters to send to the API endpoint
for the public get app operation typically these are written to a http.Request
*/
type PublicGetAppParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Language*/
	Language *string
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get app params
func (o *PublicGetAppParams) WithTimeout(timeout time.Duration) *PublicGetAppParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get app params
func (o *PublicGetAppParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get app params
func (o *PublicGetAppParams) WithContext(ctx context.Context) *PublicGetAppParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get app params
func (o *PublicGetAppParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get app params
func (o *PublicGetAppParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get app params
func (o *PublicGetAppParams) WithHTTPClient(client *http.Client) *PublicGetAppParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get app params
func (o *PublicGetAppParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get app params
func (o *PublicGetAppParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetAppParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithItemID adds the itemID to the public get app params
func (o *PublicGetAppParams) WithItemID(itemID string) *PublicGetAppParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public get app params
func (o *PublicGetAppParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the public get app params
func (o *PublicGetAppParams) WithNamespace(namespace string) *PublicGetAppParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get app params
func (o *PublicGetAppParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get app params
func (o *PublicGetAppParams) WithLanguage(language *string) *PublicGetAppParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get app params
func (o *PublicGetAppParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the public get app params
func (o *PublicGetAppParams) WithRegion(region *string) *PublicGetAppParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get app params
func (o *PublicGetAppParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public get app params
func (o *PublicGetAppParams) WithStoreID(storeID *string) *PublicGetAppParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get app params
func (o *PublicGetAppParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetAppParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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
