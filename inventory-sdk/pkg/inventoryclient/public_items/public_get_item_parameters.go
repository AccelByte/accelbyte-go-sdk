// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_items

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

// NewPublicGetItemParams creates a new PublicGetItemParams object
// with the default values initialized.
func NewPublicGetItemParams() *PublicGetItemParams {
	var ()
	return &PublicGetItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetItemParamsWithTimeout creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetItemParamsWithTimeout(timeout time.Duration) *PublicGetItemParams {
	var ()
	return &PublicGetItemParams{

		timeout: timeout,
	}
}

// NewPublicGetItemParamsWithContext creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetItemParamsWithContext(ctx context.Context) *PublicGetItemParams {
	var ()
	return &PublicGetItemParams{

		Context: ctx,
	}
}

// NewPublicGetItemParamsWithHTTPClient creates a new PublicGetItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetItemParamsWithHTTPClient(client *http.Client) *PublicGetItemParams {
	var ()
	return &PublicGetItemParams{
		HTTPClient: client,
	}
}

/*PublicGetItemParams contains all the parameters to send to the API endpoint
for the public get item operation typically these are written to a http.Request
*/
type PublicGetItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SlotID
	  slotID

	*/
	SlotID string
	/*SourceItemID
	  sourceItemID

	*/
	SourceItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get item params
func (o *PublicGetItemParams) WithTimeout(timeout time.Duration) *PublicGetItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get item params
func (o *PublicGetItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get item params
func (o *PublicGetItemParams) WithContext(ctx context.Context) *PublicGetItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get item params
func (o *PublicGetItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get item params
func (o *PublicGetItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get item params
func (o *PublicGetItemParams) WithHTTPClient(client *http.Client) *PublicGetItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get item params
func (o *PublicGetItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get item params
func (o *PublicGetItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithInventoryID adds the inventoryID to the public get item params
func (o *PublicGetItemParams) WithInventoryID(inventoryID string) *PublicGetItemParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the public get item params
func (o *PublicGetItemParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the public get item params
func (o *PublicGetItemParams) WithNamespace(namespace string) *PublicGetItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get item params
func (o *PublicGetItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the public get item params
func (o *PublicGetItemParams) WithSlotID(slotID string) *PublicGetItemParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the public get item params
func (o *PublicGetItemParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithSourceItemID adds the sourceItemID to the public get item params
func (o *PublicGetItemParams) WithSourceItemID(sourceItemID string) *PublicGetItemParams {
	o.SetSourceItemID(sourceItemID)
	return o
}

// SetSourceItemID adds the sourceItemId to the public get item params
func (o *PublicGetItemParams) SetSourceItemID(sourceItemID string) {
	o.SourceItemID = sourceItemID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
		return err
	}

	// path param sourceItemId
	if err := r.SetPathParam("sourceItemId", o.SourceItemID); err != nil {
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
