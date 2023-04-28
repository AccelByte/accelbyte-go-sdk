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

// NewPublicGetItemByAppIDParams creates a new PublicGetItemByAppIDParams object
// with the default values initialized.
func NewPublicGetItemByAppIDParams() *PublicGetItemByAppIDParams {
	var ()
	return &PublicGetItemByAppIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemByAppIDParamsWithTimeout creates a new PublicGetItemByAppIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemByAppIDParamsWithTimeout(timeout time.Duration) *PublicGetItemByAppIDParams {
	var ()
	return &PublicGetItemByAppIDParams{

		timeout: timeout,
	}
}

// NewPublicGetItemByAppIDParamsWithContext creates a new PublicGetItemByAppIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemByAppIDParamsWithContext(ctx context.Context) *PublicGetItemByAppIDParams {
	var ()
	return &PublicGetItemByAppIDParams{

		Context: ctx,
	}
}

// NewPublicGetItemByAppIDParamsWithHTTPClient creates a new PublicGetItemByAppIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemByAppIDParamsWithHTTPClient(client *http.Client) *PublicGetItemByAppIDParams {
	var ()
	return &PublicGetItemByAppIDParams{
		HTTPClient: client,
	}
}

/*PublicGetItemByAppIDParams contains all the parameters to send to the API endpoint
for the public get item by app id operation typically these are written to a http.Request
*/
type PublicGetItemByAppIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Language*/
	Language *string
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*AppID*/
	AppID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithTimeout(timeout time.Duration) *PublicGetItemByAppIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithContext(ctx context.Context) *PublicGetItemByAppIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithHTTPClient(client *http.Client) *PublicGetItemByAppIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithNamespace(namespace string) *PublicGetItemByAppIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithLanguage(language *string) *PublicGetItemByAppIDParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithRegion(region *string) *PublicGetItemByAppIDParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithStoreID(storeID *string) *PublicGetItemByAppIDParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithAppID adds the appID to the public get item by app id params
func (o *PublicGetItemByAppIDParams) WithAppID(appID string) *PublicGetItemByAppIDParams {
	o.SetAppID(appID)
	return o
}

// SetAppID adds the appId to the public get item by app id params
func (o *PublicGetItemByAppIDParams) SetAppID(appID string) {
	o.AppID = appID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemByAppIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// query param appId
	qrAppID := o.AppID
	qAppID := qrAppID
	if qAppID != "" {
		if err := r.SetQueryParam("appId", qAppID); err != nil {
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
