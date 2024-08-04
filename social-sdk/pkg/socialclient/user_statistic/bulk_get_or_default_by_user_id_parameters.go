// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkGetOrDefaultByUserIDParams creates a new BulkGetOrDefaultByUserIDParams object
// with the default values initialized.
func NewBulkGetOrDefaultByUserIDParams() *BulkGetOrDefaultByUserIDParams {
	var ()
	return &BulkGetOrDefaultByUserIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetOrDefaultByUserIDParamsWithTimeout creates a new BulkGetOrDefaultByUserIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetOrDefaultByUserIDParamsWithTimeout(timeout time.Duration) *BulkGetOrDefaultByUserIDParams {
	var ()
	return &BulkGetOrDefaultByUserIDParams{

		timeout: timeout,
	}
}

// NewBulkGetOrDefaultByUserIDParamsWithContext creates a new BulkGetOrDefaultByUserIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetOrDefaultByUserIDParamsWithContext(ctx context.Context) *BulkGetOrDefaultByUserIDParams {
	var ()
	return &BulkGetOrDefaultByUserIDParams{

		Context: ctx,
	}
}

// NewBulkGetOrDefaultByUserIDParamsWithHTTPClient creates a new BulkGetOrDefaultByUserIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetOrDefaultByUserIDParamsWithHTTPClient(client *http.Client) *BulkGetOrDefaultByUserIDParams {
	var ()
	return &BulkGetOrDefaultByUserIDParams{
		HTTPClient: client,
	}
}

/*BulkGetOrDefaultByUserIDParams contains all the parameters to send to the API endpoint
for the bulk get or default by user id operation typically these are written to a http.Request
*/
type BulkGetOrDefaultByUserIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.BulkUserStatItemByStatCodes
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithTimeout(timeout time.Duration) *BulkGetOrDefaultByUserIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithContext(ctx context.Context) *BulkGetOrDefaultByUserIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithHTTPClient(client *http.Client) *BulkGetOrDefaultByUserIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkGetOrDefaultByUserIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithBody(body *socialclientmodels.BulkUserStatItemByStatCodes) *BulkGetOrDefaultByUserIDParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetBody(body *socialclientmodels.BulkUserStatItemByStatCodes) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithNamespace(namespace string) *BulkGetOrDefaultByUserIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithUserID(userID string) *BulkGetOrDefaultByUserIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) WithAdditionalKey(additionalKey *string) *BulkGetOrDefaultByUserIDParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk get or default by user id params
func (o *BulkGetOrDefaultByUserIDParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetOrDefaultByUserIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
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
