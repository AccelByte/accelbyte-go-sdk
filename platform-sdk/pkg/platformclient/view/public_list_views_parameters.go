// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

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

// NewPublicListViewsParams creates a new PublicListViewsParams object
// with the default values initialized.
func NewPublicListViewsParams() *PublicListViewsParams {
	var ()
	return &PublicListViewsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListViewsParamsWithTimeout creates a new PublicListViewsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListViewsParamsWithTimeout(timeout time.Duration) *PublicListViewsParams {
	var ()
	return &PublicListViewsParams{

		timeout: timeout,
	}
}

// NewPublicListViewsParamsWithContext creates a new PublicListViewsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListViewsParamsWithContext(ctx context.Context) *PublicListViewsParams {
	var ()
	return &PublicListViewsParams{

		Context: ctx,
	}
}

// NewPublicListViewsParamsWithHTTPClient creates a new PublicListViewsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListViewsParamsWithHTTPClient(client *http.Client) *PublicListViewsParams {
	var ()
	return &PublicListViewsParams{
		HTTPClient: client,
	}
}

/*PublicListViewsParams contains all the parameters to send to the API endpoint
for the public list views operation typically these are written to a http.Request
*/
type PublicListViewsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string
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

// WithTimeout adds the timeout to the public list views params
func (o *PublicListViewsParams) WithTimeout(timeout time.Duration) *PublicListViewsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list views params
func (o *PublicListViewsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list views params
func (o *PublicListViewsParams) WithContext(ctx context.Context) *PublicListViewsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list views params
func (o *PublicListViewsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list views params
func (o *PublicListViewsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list views params
func (o *PublicListViewsParams) WithHTTPClient(client *http.Client) *PublicListViewsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list views params
func (o *PublicListViewsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list views params
func (o *PublicListViewsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListViewsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list views params
func (o *PublicListViewsParams) WithNamespace(namespace string) *PublicListViewsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list views params
func (o *PublicListViewsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public list views params
func (o *PublicListViewsParams) WithUserID(userID string) *PublicListViewsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list views params
func (o *PublicListViewsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLanguage adds the language to the public list views params
func (o *PublicListViewsParams) WithLanguage(language *string) *PublicListViewsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public list views params
func (o *PublicListViewsParams) SetLanguage(language *string) {
	o.Language = language
}

// WithStoreID adds the storeID to the public list views params
func (o *PublicListViewsParams) WithStoreID(storeID *string) *PublicListViewsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public list views params
func (o *PublicListViewsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListViewsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
