// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package category

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

// NewPublicGetDescendantCategoriesParams creates a new PublicGetDescendantCategoriesParams object
// with the default values initialized.
func NewPublicGetDescendantCategoriesParams() *PublicGetDescendantCategoriesParams {
	var ()
	return &PublicGetDescendantCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetDescendantCategoriesParamsWithTimeout creates a new PublicGetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetDescendantCategoriesParamsWithTimeout(timeout time.Duration) *PublicGetDescendantCategoriesParams {
	var ()
	return &PublicGetDescendantCategoriesParams{

		timeout: timeout,
	}
}

// NewPublicGetDescendantCategoriesParamsWithContext creates a new PublicGetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetDescendantCategoriesParamsWithContext(ctx context.Context) *PublicGetDescendantCategoriesParams {
	var ()
	return &PublicGetDescendantCategoriesParams{

		Context: ctx,
	}
}

// NewPublicGetDescendantCategoriesParamsWithHTTPClient creates a new PublicGetDescendantCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetDescendantCategoriesParamsWithHTTPClient(client *http.Client) *PublicGetDescendantCategoriesParams {
	var ()
	return &PublicGetDescendantCategoriesParams{
		HTTPClient: client,
	}
}

/*PublicGetDescendantCategoriesParams contains all the parameters to send to the API endpoint
for the public get descendant categories operation typically these are written to a http.Request
*/
type PublicGetDescendantCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CategoryPath*/
	CategoryPath string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Language*/
	Language *string
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

// WithTimeout adds the timeout to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithTimeout(timeout time.Duration) *PublicGetDescendantCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithContext(ctx context.Context) *PublicGetDescendantCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithHTTPClient(client *http.Client) *PublicGetDescendantCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetDescendantCategoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategoryPath adds the categoryPath to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithCategoryPath(categoryPath string) *PublicGetDescendantCategoriesParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithNamespace(namespace string) *PublicGetDescendantCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithLanguage(language *string) *PublicGetDescendantCategoriesParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetLanguage(language *string) {
	o.Language = language
}

// WithStoreID adds the storeID to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) WithStoreID(storeID *string) *PublicGetDescendantCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get descendant categories params
func (o *PublicGetDescendantCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetDescendantCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param categoryPath
	if err := r.SetPathParam("categoryPath", o.CategoryPath); err != nil {
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
