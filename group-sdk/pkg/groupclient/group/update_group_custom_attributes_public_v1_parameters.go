// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// NewUpdateGroupCustomAttributesPublicV1Params creates a new UpdateGroupCustomAttributesPublicV1Params object
// with the default values initialized.
func NewUpdateGroupCustomAttributesPublicV1Params() *UpdateGroupCustomAttributesPublicV1Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupCustomAttributesPublicV1ParamsWithTimeout creates a new UpdateGroupCustomAttributesPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupCustomAttributesPublicV1ParamsWithTimeout(timeout time.Duration) *UpdateGroupCustomAttributesPublicV1Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV1Params{

		timeout: timeout,
	}
}

// NewUpdateGroupCustomAttributesPublicV1ParamsWithContext creates a new UpdateGroupCustomAttributesPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupCustomAttributesPublicV1ParamsWithContext(ctx context.Context) *UpdateGroupCustomAttributesPublicV1Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV1Params{

		Context: ctx,
	}
}

// NewUpdateGroupCustomAttributesPublicV1ParamsWithHTTPClient creates a new UpdateGroupCustomAttributesPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupCustomAttributesPublicV1ParamsWithHTTPClient(client *http.Client) *UpdateGroupCustomAttributesPublicV1Params {
	var ()
	return &UpdateGroupCustomAttributesPublicV1Params{
		HTTPClient: client,
	}
}

/*UpdateGroupCustomAttributesPublicV1Params contains all the parameters to send to the API endpoint
for the update group custom attributes public v1 operation typically these are written to a http.Request
*/
type UpdateGroupCustomAttributesPublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithTimeout(timeout time.Duration) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithContext(ctx context.Context) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithHTTPClient(client *http.Client) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateGroupCustomAttributesPublicV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithBody(body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetBody(body *groupclientmodels.ModelsUpdateGroupCustomAttributesRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithGroupID(groupID string) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) WithNamespace(namespace string) *UpdateGroupCustomAttributesPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group custom attributes public v1 params
func (o *UpdateGroupCustomAttributesPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupCustomAttributesPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
