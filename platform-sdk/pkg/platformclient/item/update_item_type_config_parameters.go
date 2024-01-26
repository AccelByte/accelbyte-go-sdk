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

// NewUpdateItemTypeConfigParams creates a new UpdateItemTypeConfigParams object
// with the default values initialized.
func NewUpdateItemTypeConfigParams() *UpdateItemTypeConfigParams {
	var ()
	return &UpdateItemTypeConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateItemTypeConfigParamsWithTimeout creates a new UpdateItemTypeConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateItemTypeConfigParamsWithTimeout(timeout time.Duration) *UpdateItemTypeConfigParams {
	var ()
	return &UpdateItemTypeConfigParams{

		timeout: timeout,
	}
}

// NewUpdateItemTypeConfigParamsWithContext creates a new UpdateItemTypeConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateItemTypeConfigParamsWithContext(ctx context.Context) *UpdateItemTypeConfigParams {
	var ()
	return &UpdateItemTypeConfigParams{

		Context: ctx,
	}
}

// NewUpdateItemTypeConfigParamsWithHTTPClient creates a new UpdateItemTypeConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateItemTypeConfigParamsWithHTTPClient(client *http.Client) *UpdateItemTypeConfigParams {
	var ()
	return &UpdateItemTypeConfigParams{
		HTTPClient: client,
	}
}

/*UpdateItemTypeConfigParams contains all the parameters to send to the API endpoint
for the update item type config operation typically these are written to a http.Request
*/
type UpdateItemTypeConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemTypeConfigUpdate
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update item type config params
func (o *UpdateItemTypeConfigParams) WithTimeout(timeout time.Duration) *UpdateItemTypeConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update item type config params
func (o *UpdateItemTypeConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update item type config params
func (o *UpdateItemTypeConfigParams) WithContext(ctx context.Context) *UpdateItemTypeConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update item type config params
func (o *UpdateItemTypeConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update item type config params
func (o *UpdateItemTypeConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update item type config params
func (o *UpdateItemTypeConfigParams) WithHTTPClient(client *http.Client) *UpdateItemTypeConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update item type config params
func (o *UpdateItemTypeConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update item type config params
func (o *UpdateItemTypeConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateItemTypeConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update item type config params
func (o *UpdateItemTypeConfigParams) WithBody(body *platformclientmodels.ItemTypeConfigUpdate) *UpdateItemTypeConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update item type config params
func (o *UpdateItemTypeConfigParams) SetBody(body *platformclientmodels.ItemTypeConfigUpdate) {
	o.Body = body
}

// WithID adds the idVar to the update item type config params
func (o *UpdateItemTypeConfigParams) WithID(idVar string) *UpdateItemTypeConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update item type config params
func (o *UpdateItemTypeConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateItemTypeConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
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
