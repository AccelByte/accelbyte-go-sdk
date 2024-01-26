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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateCategoryParams creates a new CreateCategoryParams object
// with the default values initialized.
func NewCreateCategoryParams() *CreateCategoryParams {
	var ()
	return &CreateCategoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateCategoryParamsWithTimeout creates a new CreateCategoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateCategoryParamsWithTimeout(timeout time.Duration) *CreateCategoryParams {
	var ()
	return &CreateCategoryParams{

		timeout: timeout,
	}
}

// NewCreateCategoryParamsWithContext creates a new CreateCategoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateCategoryParamsWithContext(ctx context.Context) *CreateCategoryParams {
	var ()
	return &CreateCategoryParams{

		Context: ctx,
	}
}

// NewCreateCategoryParamsWithHTTPClient creates a new CreateCategoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateCategoryParamsWithHTTPClient(client *http.Client) *CreateCategoryParams {
	var ()
	return &CreateCategoryParams{
		HTTPClient: client,
	}
}

/*CreateCategoryParams contains all the parameters to send to the API endpoint
for the create category operation typically these are written to a http.Request
*/
type CreateCategoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CategoryCreate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create category params
func (o *CreateCategoryParams) WithTimeout(timeout time.Duration) *CreateCategoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create category params
func (o *CreateCategoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create category params
func (o *CreateCategoryParams) WithContext(ctx context.Context) *CreateCategoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create category params
func (o *CreateCategoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create category params
func (o *CreateCategoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create category params
func (o *CreateCategoryParams) WithHTTPClient(client *http.Client) *CreateCategoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create category params
func (o *CreateCategoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create category params
func (o *CreateCategoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateCategoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create category params
func (o *CreateCategoryParams) WithBody(body *platformclientmodels.CategoryCreate) *CreateCategoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create category params
func (o *CreateCategoryParams) SetBody(body *platformclientmodels.CategoryCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create category params
func (o *CreateCategoryParams) WithNamespace(namespace string) *CreateCategoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create category params
func (o *CreateCategoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the create category params
func (o *CreateCategoryParams) WithStoreID(storeID string) *CreateCategoryParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the create category params
func (o *CreateCategoryParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateCategoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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
