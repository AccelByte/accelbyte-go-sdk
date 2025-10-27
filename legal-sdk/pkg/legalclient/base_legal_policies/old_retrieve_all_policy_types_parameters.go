// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewOldRetrieveAllPolicyTypesParams creates a new OldRetrieveAllPolicyTypesParams object
// with the default values initialized.
func NewOldRetrieveAllPolicyTypesParams() *OldRetrieveAllPolicyTypesParams {
	var ()
	return &OldRetrieveAllPolicyTypesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveAllPolicyTypesParamsWithTimeout creates a new OldRetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveAllPolicyTypesParamsWithTimeout(timeout time.Duration) *OldRetrieveAllPolicyTypesParams {
	var ()
	return &OldRetrieveAllPolicyTypesParams{

		timeout: timeout,
	}
}

// NewOldRetrieveAllPolicyTypesParamsWithContext creates a new OldRetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveAllPolicyTypesParamsWithContext(ctx context.Context) *OldRetrieveAllPolicyTypesParams {
	var ()
	return &OldRetrieveAllPolicyTypesParams{

		Context: ctx,
	}
}

// NewOldRetrieveAllPolicyTypesParamsWithHTTPClient creates a new OldRetrieveAllPolicyTypesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveAllPolicyTypesParamsWithHTTPClient(client *http.Client) *OldRetrieveAllPolicyTypesParams {
	var ()
	return &OldRetrieveAllPolicyTypesParams{
		HTTPClient: client,
	}
}

/*OldRetrieveAllPolicyTypesParams contains all the parameters to send to the API endpoint
for the old retrieve all policy types operation typically these are written to a http.Request
*/
type OldRetrieveAllPolicyTypesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Offset
	  Offset

	*/
	Offset *int32
	/*Limit
	  Limit

	*/
	Limit int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) WithTimeout(timeout time.Duration) *OldRetrieveAllPolicyTypesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) WithContext(ctx context.Context) *OldRetrieveAllPolicyTypesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) WithHTTPClient(client *http.Client) *OldRetrieveAllPolicyTypesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveAllPolicyTypesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithOffset adds the offset to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) WithOffset(offset *int32) *OldRetrieveAllPolicyTypesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithLimit adds the limit to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) WithLimit(limit int32) *OldRetrieveAllPolicyTypesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the old retrieve all policy types params
func (o *OldRetrieveAllPolicyTypesParams) SetLimit(limit int32) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveAllPolicyTypesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param limit
	qrLimit := o.Limit
	qLimit := swag.FormatInt32(qrLimit)
	if qLimit != "" {
		if err := r.SetQueryParam("limit", qLimit); err != nil {
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
