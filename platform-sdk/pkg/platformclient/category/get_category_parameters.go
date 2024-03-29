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

// NewGetCategoryParams creates a new GetCategoryParams object
// with the default values initialized.
func NewGetCategoryParams() *GetCategoryParams {
	var ()
	return &GetCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCategoryParamsWithTimeout creates a new GetCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCategoryParamsWithTimeout(timeout time.Duration) *GetCategoryParams {
	var ()
	return &GetCategoryParams{

		timeout: timeout,
	}
}

// NewGetCategoryParamsWithContext creates a new GetCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCategoryParamsWithContext(ctx context.Context) *GetCategoryParams {
	var ()
	return &GetCategoryParams{

		Context: ctx,
	}
}

// NewGetCategoryParamsWithHTTPClient creates a new GetCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCategoryParamsWithHTTPClient(client *http.Client) *GetCategoryParams {
	var ()
	return &GetCategoryParams{
		HTTPClient: client,
	}
}

/*GetCategoryParams contains all the parameters to send to the API endpoint
for the get category operation typically these are written to a http.Request
*/
type GetCategoryParams struct {

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

// WithTimeout adds the timeout to the get category params
func (o *GetCategoryParams) WithTimeout(timeout time.Duration) *GetCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get category params
func (o *GetCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get category params
func (o *GetCategoryParams) WithContext(ctx context.Context) *GetCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get category params
func (o *GetCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get category params
func (o *GetCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get category params
func (o *GetCategoryParams) WithHTTPClient(client *http.Client) *GetCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get category params
func (o *GetCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get category params
func (o *GetCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCategoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategoryPath adds the categoryPath to the get category params
func (o *GetCategoryParams) WithCategoryPath(categoryPath string) *GetCategoryParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the get category params
func (o *GetCategoryParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the get category params
func (o *GetCategoryParams) WithNamespace(namespace string) *GetCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get category params
func (o *GetCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the get category params
func (o *GetCategoryParams) WithStoreID(storeID *string) *GetCategoryParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get category params
func (o *GetCategoryParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
