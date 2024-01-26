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

// NewDownloadCategoriesParams creates a new DownloadCategoriesParams object
// with the default values initialized.
func NewDownloadCategoriesParams() *DownloadCategoriesParams {
	var ()
	return &DownloadCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadCategoriesParamsWithTimeout creates a new DownloadCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadCategoriesParamsWithTimeout(timeout time.Duration) *DownloadCategoriesParams {
	var ()
	return &DownloadCategoriesParams{

		timeout: timeout,
	}
}

// NewDownloadCategoriesParamsWithContext creates a new DownloadCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadCategoriesParamsWithContext(ctx context.Context) *DownloadCategoriesParams {
	var ()
	return &DownloadCategoriesParams{

		Context: ctx,
	}
}

// NewDownloadCategoriesParamsWithHTTPClient creates a new DownloadCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadCategoriesParamsWithHTTPClient(client *http.Client) *DownloadCategoriesParams {
	var ()
	return &DownloadCategoriesParams{
		HTTPClient: client,
	}
}

/*DownloadCategoriesParams contains all the parameters to send to the API endpoint
for the download categories operation typically these are written to a http.Request
*/
type DownloadCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the download categories params
func (o *DownloadCategoriesParams) WithTimeout(timeout time.Duration) *DownloadCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download categories params
func (o *DownloadCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download categories params
func (o *DownloadCategoriesParams) WithContext(ctx context.Context) *DownloadCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download categories params
func (o *DownloadCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download categories params
func (o *DownloadCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download categories params
func (o *DownloadCategoriesParams) WithHTTPClient(client *http.Client) *DownloadCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download categories params
func (o *DownloadCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download categories params
func (o *DownloadCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadCategoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download categories params
func (o *DownloadCategoriesParams) WithNamespace(namespace string) *DownloadCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download categories params
func (o *DownloadCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the download categories params
func (o *DownloadCategoriesParams) WithLanguage(language *string) *DownloadCategoriesParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the download categories params
func (o *DownloadCategoriesParams) SetLanguage(language *string) {
	o.Language = language
}

// WithStoreID adds the storeID to the download categories params
func (o *DownloadCategoriesParams) WithStoreID(storeID *string) *DownloadCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the download categories params
func (o *DownloadCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
