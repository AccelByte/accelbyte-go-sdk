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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateItemTypeConfigParams creates a new CreateItemTypeConfigParams object
// with the default values initialized.
func NewCreateItemTypeConfigParams() *CreateItemTypeConfigParams {
	var ()
	return &CreateItemTypeConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateItemTypeConfigParamsWithTimeout creates a new CreateItemTypeConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateItemTypeConfigParamsWithTimeout(timeout time.Duration) *CreateItemTypeConfigParams {
	var ()
	return &CreateItemTypeConfigParams{

		timeout: timeout,
	}
}

// NewCreateItemTypeConfigParamsWithContext creates a new CreateItemTypeConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateItemTypeConfigParamsWithContext(ctx context.Context) *CreateItemTypeConfigParams {
	var ()
	return &CreateItemTypeConfigParams{

		Context: ctx,
	}
}

// NewCreateItemTypeConfigParamsWithHTTPClient creates a new CreateItemTypeConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateItemTypeConfigParamsWithHTTPClient(client *http.Client) *CreateItemTypeConfigParams {
	var ()
	return &CreateItemTypeConfigParams{
		HTTPClient: client,
	}
}

/*CreateItemTypeConfigParams contains all the parameters to send to the API endpoint
for the create item type config operation typically these are written to a http.Request
*/
type CreateItemTypeConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemTypeConfigCreate

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create item type config params
func (o *CreateItemTypeConfigParams) WithTimeout(timeout time.Duration) *CreateItemTypeConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create item type config params
func (o *CreateItemTypeConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create item type config params
func (o *CreateItemTypeConfigParams) WithContext(ctx context.Context) *CreateItemTypeConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create item type config params
func (o *CreateItemTypeConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create item type config params
func (o *CreateItemTypeConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create item type config params
func (o *CreateItemTypeConfigParams) WithHTTPClient(client *http.Client) *CreateItemTypeConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create item type config params
func (o *CreateItemTypeConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create item type config params
func (o *CreateItemTypeConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateItemTypeConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create item type config params
func (o *CreateItemTypeConfigParams) WithBody(body *platformclientmodels.ItemTypeConfigCreate) *CreateItemTypeConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create item type config params
func (o *CreateItemTypeConfigParams) SetBody(body *platformclientmodels.ItemTypeConfigCreate) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateItemTypeConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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
