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

// NewGetChildCategoriesParams creates a new GetChildCategoriesParams object
// with the default values initialized.
func NewGetChildCategoriesParams() *GetChildCategoriesParams {
	var ()
	return &GetChildCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetChildCategoriesParamsWithTimeout creates a new GetChildCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetChildCategoriesParamsWithTimeout(timeout time.Duration) *GetChildCategoriesParams {
	var ()
	return &GetChildCategoriesParams{

		timeout: timeout,
	}
}

// NewGetChildCategoriesParamsWithContext creates a new GetChildCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetChildCategoriesParamsWithContext(ctx context.Context) *GetChildCategoriesParams {
	var ()
	return &GetChildCategoriesParams{

		Context: ctx,
	}
}

// NewGetChildCategoriesParamsWithHTTPClient creates a new GetChildCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetChildCategoriesParamsWithHTTPClient(client *http.Client) *GetChildCategoriesParams {
	var ()
	return &GetChildCategoriesParams{
		HTTPClient: client,
	}
}

/*GetChildCategoriesParams contains all the parameters to send to the API endpoint
for the get child categories operation typically these are written to a http.Request
*/
type GetChildCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CategoryPath*/
	CategoryPath string
	/*Namespace
	  Namespace

	*/
	Namespace string
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

// WithTimeout adds the timeout to the get child categories params
func (o *GetChildCategoriesParams) WithTimeout(timeout time.Duration) *GetChildCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get child categories params
func (o *GetChildCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get child categories params
func (o *GetChildCategoriesParams) WithContext(ctx context.Context) *GetChildCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get child categories params
func (o *GetChildCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get child categories params
func (o *GetChildCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get child categories params
func (o *GetChildCategoriesParams) WithHTTPClient(client *http.Client) *GetChildCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get child categories params
func (o *GetChildCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get child categories params
func (o *GetChildCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetChildCategoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategoryPath adds the categoryPath to the get child categories params
func (o *GetChildCategoriesParams) WithCategoryPath(categoryPath string) *GetChildCategoriesParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the get child categories params
func (o *GetChildCategoriesParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the get child categories params
func (o *GetChildCategoriesParams) WithNamespace(namespace string) *GetChildCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get child categories params
func (o *GetChildCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the get child categories params
func (o *GetChildCategoriesParams) WithStoreID(storeID *string) *GetChildCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get child categories params
func (o *GetChildCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetChildCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
